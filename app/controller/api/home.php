<?php
class Home extends JI_Controller{

	public function __construct(){
    parent::__construct();
		//$this->setTheme('frontx');
		$this->load("front/b_kategori_model",'bk');
		$this->load("front/c_produk_model",'cp');
	}
  private function __menuBuilder($menus){
    $k = array();
    $ks = array();
    $kss = array();
    foreach($menus as $m){
      if($m->utype == "kategori"){
        $k[$m->id] = $m;
        $k[$m->id]->childs = array();
      }else if($m->utype=="kategori_sub"){
        $ks[$m->id] = $m;
        $ks[$m->id]->childs = array();
      }else{
        $kss[$m->id] = $m;
      }
    }
    foreach($kss as $key=>$val){
      $parent_id = $val->b_kategori_id;
      if(isset($ks[$parent_id])){
        $ks[$parent_id]->childs[] = $val;
      }
    }
    foreach($ks as $key=>$val){
      $parent_id = $val->b_kategori_id;
      if(isset($k[$parent_id])){
        $k[$parent_id]->childs[] = $val;
      }
    }
    return $k;
  }
	public function index(){
		$data = array();
		$data['kategori'] = array_values($this->__menuBuilder($this->bk->getKategori()));
		$data['produk'] = $this->cp->getAll($page=0,$pagesize=100);

		$this->__json_out($data);
	}
	public function indexx(){
		$this->status = '404';
		header("HTTP/1.0 404 Not Found");
		$data = array();
		$this->__json_out($data);
	}

}
