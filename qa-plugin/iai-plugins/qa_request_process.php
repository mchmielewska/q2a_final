<?php
require_once "Changer.php";

/**
 * Class ProcessRequest
 */
class ProcessRequest extends Changer
{

    /**
     * @var
     */


    /**
     *
     */
    public function  getRequest()
    {
        if (qa_is_logged_in()) {
            $data = $this->getPost();
            if($data) {
                $this->updateData($data['contentLanguage'], "selected_language", qa_get_logged_in_userid());
                $this->updateData($data['service'], "selected_service", qa_get_logged_in_userid());
                $this->updateData($data['interfaceLanguage'], "selected_interface_lang", qa_get_logged_in_userid());
                setcookie('languagecode', $this->av->changeWordLang($data['interfaceLanguage']), time() + (86400 * 30), "/");
                $this->switchPrefix($data['contentLanguage'], $data['service']);
            }
        }
    }

    /**
     * @return false|string
     */
    public function sendResponse()
    {

        if (qa_is_logged_in()) {
            $obj = (object)[
                'interfaceLanguage' => [
                    'current' => $this->getData("selected_interface_lang", qa_get_logged_in_userid()),
                    'available' => $this->av->getAvailableLangInterface(),
                ],
                'contentLanguage' => [
                    'current' => $this->getData("selected_language", qa_get_logged_in_userid()),
                    'available' => $this->av->getAvailableLangContent(),
                ],
                'service' => [
                    'current' => array(
                        "id" => $this->getData("selected_service", qa_get_logged_in_userid()),
                        "name" => $this->av->getOneOfServices($this->getData("selected_service", qa_get_logged_in_userid()))
                    ),
                    'available' => $this->av->getAvailableServices(),
                ],
                'endpointUrl' => "/change-language"
            ];
            $data = json_encode($obj);
            return $data;
        }
    }

    /**
     * @return array
     */
    public function getPost()
    {
        if (isset($_POST['interfaceLanguage']) and isset($_POST['contentLanguage']) and isset($_POST['service'])) {
            if ($this->av->getOneOfServices($_POST['service']) != null
                and $this->av->CheckIfExistLangContent($_POST['contentLanguage'])
                and $this->av->CheckIfExistLangInter($_POST['interfaceLanguage'])) {
                $data = array(
                    "interfaceLanguage" => trim(mysqli_real_escape_string(qa_db_connection(), $_POST['interfaceLanguage'])),
                    "contentLanguage" => trim(mysqli_real_escape_string(qa_db_connection(), $_POST['contentLanguage'])),
                    "service" => trim(mysqli_real_escape_string(qa_db_connection(), $_POST['service']))

                );
                return $data;
            }
        }
    }

}