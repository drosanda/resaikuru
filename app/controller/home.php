<?php
class Home extends JI_Controller{

	public function __construct(){
    parent::__construct();
		$this->setTheme('front');
		$this->load('front/c_produk_model','cp');
	}
	public function index(){
		//$this->debug($_SERVER);
		//die();
		$cf = 'https';
		if(isset($_SERVER['HTTP_X_FORWARDED_PROTO'])) $cf = $_SERVER['HTTP_X_FORWARDED_PROTO'];
		if($cf == 'http' ){
    	$redirect = 'https://' . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI'];
    	header('HTTP/1.1 301 Moved Permanently');
    	header('Location: ' . $redirect);
    	exit();
		}
		$data = $this->__init();

		$data['kategori'] = array();
		$data['kategori']['programming'] = $this->cp->getByKategoriId('51');
		$data['kategori']['bisnis'] = $this->cp->getByKategoriId('11');
		$data['kategori']['fiksi'] = $this->cp->getByKategoriId('12');
		$data['kategori']['agama'] = $this->cp->getByKategoriId('48');
		$data['kategori']['seni'] = $this->cp->getByKategoriId('55');

		$this->loadLayout('homepage',$data);
		$this->render();
	}

}
