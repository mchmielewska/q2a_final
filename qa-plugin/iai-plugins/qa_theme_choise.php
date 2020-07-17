<?php

/**
 * Class qa_html_theme_layer
 */
class qa_html_theme_layer extends qa_html_theme_base
{


    /**
     *
     */
    public function body_content()
    {
        $this->body_prefix();
        $this->notices();

        $this->widgets('full', 'top');
        $this->header();

        $extratags = isset($this->content['wrapper_tags']) ? $this->content['wrapper_tags'] : '';
        $this->output('<div class="qa-body-wrapper"' . $extratags . '>', '');
        $this->widgets('full', 'high');

        $this->output('<div class="qa-main-wrapper">', '');
        $this->main();
        $this->sidepanel();

        $this->output('</div> <!-- END main-wrapper -->');

        $this->widgets('full', 'low');
        $this->output('</div> <!-- END body-wrapper -->');

        $this->footer();

        $this->body_suffix();
    }

    /**
     *
     */
    function nav_list($navigation, $navtype, $level = null)
    {
        if ($navtype=='nav-user') {
            unset($navigation['register']);
        }

        qa_html_theme_base::nav_list($navigation, $navtype, $level);
    }

    /**
     *
     */
    public function body_script()
    {
        parent::body_script();

        if(isset($_SESSION['data'])) {
            $this->output(
                '<script>',
                "var User ={$_SESSION['data']}",
                '</script>'
            );

        }
    }

}