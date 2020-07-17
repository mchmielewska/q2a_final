<?php

/**
 * Class Available
 */
class Available
{
    /**
     * @return string[]
     */
    public function getAvailableLangContent()
    {
        $arrLangCo = array("pol", "eng");
        return $arrLangCo;
    }

    /**
     * @return string[]
     */
    public function getAvailableLangInterface()
    {
        $arrLangIn = array("pol", "eng");
        return $arrLangIn;

    }

    /**
     * @return string[][]
     */
    public function getAvailableServices()
    {
        $arrService = array(
            array("id" => "booking", "name" => "IdoSell Booking"),
            array("id" => "shop", "name" => "IdoSell Shop")
        );
        return $arrService;
    }

    /**
     * @param $id
     * @return string
     */
    public function getOneOfServices($id)
    {

        if ($id == "shop") {
            $name = "IdoSell Shop";
        } elseif ($id == "booking") {
            $name = "IdoSell Booking";
        } else {
            $name = "";
        }
        return $name;
    }

    /**
     * @param $id
     * @return bool
     */
    public function CheckIfExistLangContent($id)
    {
        if (in_array($id, $this->getAvailableLangContent())) {
            return true;
        }
        return false;
    }

    /**
     * @param $id
     * @return bool
     */
    public function CheckIfExistLangInter($id)
    {
        if (in_array($id, $this->getAvailableLangInterface())) {
            return true;
        }
        return false;
    }

    /**
     * @return mixed|string
     */
    public function getAvailableLanguagesFromPage()
    {
        $headers = getallheaders();
        $lang = explode(",", $headers['Accept-Language']);
        return $lang['0'];
    }

    /**
     * @param $word
     * @return string
     */
    public function changeWordLang($word)
    {

        if ($word == "pl-PL" or $word == "pol") {
            $language = "pl";
        } else {
            $language = "en-US";
        }
        return $language;
    }

    /**
     * @return string[]
     */
    public function getAvailablePrefix()
    {
        $arrPrefix = array(
            "qa_pl_s",
            "qa_pl_b",
            "qa_en_s",
            "qa_en_b",
        );
        return $arrPrefix;
    }

}