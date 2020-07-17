<?php
/*
  Plugin Name: IAI OAuth2 login
  Plugin URI:
  Plugin Description: Allows users to log in via IAI site
  Plugin Version: 1.0
  Plugin Date: 2020-07-06
  Plugin Author: Dominik Drabina, Klaudia Gołębiewska
  Plugin Author URI:
  Plugin License: GPLv2
  Plugin Minimum Question2Answer Version: 1.5
  Plugin Update Check URI:
*/
if (!defined('QA_VERSION')) { // don't allow this page to be requested directly from browser
    header('Location: ../../');
    exit;
}


if (!QA_FINAL_EXTERNAL_USERS) {
    qa_register_plugin_module("process",'qa-overrides.php','Hack','Overrides');
    qa_register_plugin_module('login', 'qa-login-user.php', 'Login', 'Login');
    qa_register_plugin_layer('qa_theme_choise.php', 'ChoiceLangLayer');
    qa_register_plugin_module('page','qa_request_process_page.php', 'RequestProcess','RequestProcess');
    qa_register_plugin_module('module','qa_request_process.php', 'ProcessRequest','ProcessRequest');

}
