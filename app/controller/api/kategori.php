<?php
class Kategori extends JI_Controller{
	var $email_send = 1;

	public function __construct(){
    parent::__construct();
		$this->setTheme('front');
		$this->load("front/b_kategori_model",'bk');
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
    $this->status = 100;
    $this->message = 'Berhasil';
    $data = array_values($this->__menuBuilder($this->bk->getKategori()));
    $this->__json_out($data);
  }
  public function warna(){
    $this->status = 100;
    $this->message = 'Berhasil';
    $data = $this->bk->getColor();
    $this->__json_out($data);
  }
  public function ukuran(){
    $this->status = 100;
    $this->message = 'Berhasil';
    $data = $this->bk->getSize();
    $this->__json_out($data);
  }
}
