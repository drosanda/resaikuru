<?php
class Notfound extends JI_Controller{
	public function __constructx(){
    parent::__construct();
		$this->setTheme('front');
	}
	public function index(){
		$data = $this->__init();
		header("HTTP/1.0 404 Not Found");
		echo '<h3>Notfound</h3>';
		echo '<br /><p>You lost! <a href="'.base_url().'">go to home</a>.</p>';
		//$this->putThemeContent("notfound",$data);
		//$this->loadLayout('col-1',$data);
		//$this->render();
	}
}
