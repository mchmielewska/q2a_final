<?php
include_once "Available.php";

/**
 * Class Changer
 */
class Changer
{

    /**
     * @var
     */
    protected $results;

    /**
     * @param $idUser
     * @return bool
     */
    protected $av;

    /**
     * Changer constructor.
     */
    public function __construct()
    {
        $this->av = new Available();
    }

    /**
     * @param $idUser
     * @return bool
     */
    public function checkIfExist($idUser)
    {

        $query = "SELECT * FROM qa_langservice where user_id=$idUser";
        $this->results = qa_db_read_all_assoc(qa_db_query_sub($query));
        if ($this->results != null) {
            return true;
        }
        return false;

    }

    /**
     * @param $data
     * @param $name
     * @param $user_id
     */
    public function updateData($data, $name, $user_id)
    {


        $query = "Update qa_langservice SET $name='$data' where user_id=$user_id";
        qa_db_query_sub($query);


    }

    /**
     * @param $idUser
     * @param $lang
     * @param $service
     * @param $interface
     */
    public function insertTo($idUser, $lang, $service, $interface)
    {

        $query = "INSERT INTO qa_langservice (user_id, selected_language, selected_service,selected_interface_lang) VALUES ('$idUser','$lang','$service','$interface')";
        qa_db_query_sub($query);

    }

    /**
     * @param $name
     * @param $id_user
     * @return mixed
     */
    public function getData($name, $id_user)
    {
        $query = "SELECT $name from qa_langservice where user_id='$id_user'";
        $data = qa_db_read_all_assoc(qa_db_query_sub($query));

        return $data[0][$name];
    }


    /**
     * @param $selectedlanguage
     * @param $selectedservices
     */
    public function switchPrefix($selectedlanguage, $selectedservices)
    {

        $pref = "qa_";
        if ($selectedlanguage == "eng" && $selectedservices == "booking") {
            $pref = 'qa_en_b';
        }
        if ($selectedlanguage == "eng" && $selectedservices == "shop") {
            $pref = 'qa_en_s';
        }
        if ($selectedlanguage == "pol" && $selectedservices == "booking") {
            $pref = 'qa_pl_b';
        }
        if ($selectedlanguage == "pol" && $selectedservices == "shop") {
            $pref = 'qa_pl_s';
        }
        setcookie('prefix', $pref, time() + (86400 * 30), "/");

    }

    /**
     * @return mixed|string
     */


    /**
     * @return string
     */
    function setLangInterfaceLogged()
    {
        if (isset($_COOKIE['languagecode'])) {
            $language = $_COOKIE['languagecode'];
        } else {
            $lang = $this->getData('selected_interface_lang', qa_get_logged_in_userid());
            $language = $this->av->changeWordLang($lang);
            setcookie('languagecode', $language, time() + (86400 * 30), "/");
        }

        return $language;
    }

    /**
     * @return mixed|string
     */
    function setLangInterfaceOffline()
    {
        if (isset($_COOKIE['languagecode'])) {
            $language = $_COOKIE['languagecode'];
        } else {
            $lang = $this->av->getAvailableLanguagesFromPage();
            $language = $this->av->changeWordLang($lang);
            setcookie('languagecode', $language, time() + (86400 * 30), "/");
        }
        return $language;
    }

    /**
     * @param $word
     * @return string
     */

    /**
     *
     */
    function setDefautLangService()
    {
        $id = qa_get_logged_in_userid();
        if (!$this->checkIfExist($id)) {
            //pobranie z tokena
            $this->insertTo($id, "pol", "shop", "pol");
        }
        $contentLang = $this->getData('selected_language', $id);
        $service = $this->getData('selected_service', $id);
        $langInterface = $this->getData('selected_interface_lang', $id);
        setcookie('languagecode', $this->av->changeWordLang($langInterface), time() + (86400 * 30), "/");
        $this->switchPrefix($contentLang, $service);
    }


}
