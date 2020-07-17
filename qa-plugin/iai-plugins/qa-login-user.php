<?php

/**
 * Class Login
 */
class Login
{
    /**
     * @var string
     */
    private $appId = "q2aid";
    /**
     * @var string
     */
    private $appSecret = "q2asecret";
    /**
     * @var
     */
    private $result;
    /**
     * @var
     */
    private $jwtToken;
    /**
     * @var
     */
    private $jwtAccess;
    /**
     * @var
     */
    /**
     *
     */
    public function check_login()
    {


        $urlAccess = "https://trening10.iai-shop.com/panel/action/authorize/access_token";
        $urlRedirect = "https://q2a.idosell.com";

        if (isset($_GET['code'])) {

            $fields = $this->getFieldsToSend($urlRedirect);
            $this->setOpt(urldecode($urlAccess), $fields);
            $jwt = $this->decodeJWT();
            $name = $this->jwtToken[1]->sub;
            $fieldsQa = $this->getFieldsQa($name);
            if (!$this->checkSignature($jwt)) {
                die;
            }

            qa_log_in_external_user("openId", $name, $fieldsQa);
            $this->setDefautLangService();


        } else {
            if ($_SERVER['SCRIPT_URL'] === '/login') {
                header('Location: https://trening10.iai-shop.com/panel/action/authorize/authorize?response_type=code&client_id=q2aid&redirect_uri=' . urldecode($urlRedirect) . '&scope=openid profile api-pa email&state=a');
                exit();
            }

        }
    }

    /**
     * @param $urlRedirect
     * @return array
     */
    public function getFieldsToSend($urlRedirect)
    {
        $fields = array(
            "grant_type" => "authorization_code",
            "client_id" => $this->appId,
            "client_secret" => $this->appSecret,
            "redirect_uri" => $urlRedirect,
            "code" => urldecode($_GET['code']),
        );
        return $fields;
    }

    /**
     * @param $name
     * @return array
     */
    public function getFieldsQa($name)
    {
        $fieldsQa = array(
            "email" => $this->jwtToken[1]->email->email,
            "confirmed" => $this->jwtToken[1]->email->email_verified,
            "handle" => $name,
            "name" => $this->jwtToken[1]->profile->name,
            "location" => $this->jwtToken[1]->profile->locale,
            "website" => $this->jwtToken[1]->profile->website,
            "about" => $this->jwtToken[1]->profile->profile,
            "avatar" => $this->jwtToken[1]->profile->picture
        );
        return $fieldsQa;

    }

    /**
     * @return bool
     */
    public function checkSignature($jwt)
    {
        $urlKey = "https://trening10.iai-shop.com/panel/action/authorize/public_key";
        $arrayTemp = $jwt;
        array_pop($arrayTemp);
        $connectElement = implode(".", $arrayTemp);
        $lastElement = end($jwt);
        $key = file_get_contents($urlKey);
        if (openssl_verify($connectElement, base64_decode(strtr($lastElement, '-_', '+/')), $key, OPENSSL_ALGO_SHA256) == 1) {
            return true;
        }
        return false;
    }

    /**
     *
     */

    public function setDefautLangService()
    {
        $ch = qa_load_module('module', 'ProcessRequest');
        $ch->setDefautLangService();
        $_SESSION['permService'] = $this->jwtAccess[1]->scopes;

    }

    /**
     * @return false|string[]
     */
    public function decodeJWT()
    {
        $this->jwtAccess = explode('.', $this->result['access_token']);
        $this->jwtToken = explode('.', $this->result['id_token']);

        $jwt = $this->jwtAccess;
        foreach ($this->jwtAccess as &$element) {
            $element = json_decode(base64_decode($element));
        }
        foreach ($this->jwtToken as &$element) {
            $element = json_decode(base64_decode($element));

        }
        return $jwt;
    }

    /**
     * @param $url
     * @param $fields
     */
    public function setOpt($url, $fields)
    {
        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, $url);
        curl_setopt($ch, CURLOPT_POSTFIELDS, $fields);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
        $this->curlExec($ch);
        curl_close($ch);
    }

    /**
     * @param $ch
     */
    public function curlExec($ch)
    {
        $zm = curl_exec($ch);
        var_dump($zm);
        if (!$zm) {
            die('Error: "' . curl_error($ch) . '" - Code: ' . curl_errno($ch));
        }
        $this->result = json_decode($zm, true);

    }

}