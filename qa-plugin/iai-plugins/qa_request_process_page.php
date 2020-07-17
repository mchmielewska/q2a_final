<?php
include_once "Available.php";
/**
 * Class RequestProcess
 */
class RequestProcess
{
    /**
     * @var string
     */
    private $endpoint="/change-language";
    /**
     * @var
     */
    protected $results;

    /**
     * @var
     */
    private $directory;

    /**
     * @param $directory
     * @param $urltoroot
     */
    public function load_module($directory, $urltoroot)
    {
        $this->directory = $directory;
    }

    /**
     * @param $request
     * @return bool
     */
    public function match_request($request)
    {
        return ($request == 'change-language');
    }

    /**
     * @param $request
     */
    public function process_request($request)
    {
        if ($request == 'change-language' and qa_is_logged_in()) {
            $ch=qa_load_module('module','ProcessRequest');
            $ch->getRequest();
            $data=$ch->sendResponse();
            $_SESSION['data']=$data;
            qa_redirect_raw($_SERVER['HTTP_REFERER']);
        }else{
            $url=$_SERVER['HTTP_HOST'];
            header("location: index.php ");
        }


    }







}