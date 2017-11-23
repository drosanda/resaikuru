<?php
class Produk extends JI_Controller {

	public function __construct(){
    parent::__construct();
    $this->load('front/c_produk_model','produk');
	}
	public function index(){
    $this->status = 100;
    $this->message = 'Berhasil';

    $pageg = (int) $this->input->get('page');
    if(empty($pageg)) $pageg = 1;
    $pagesize = (int) $this->input->get('pagesize');
    if($pagesize <=10) $pagesize = 10;

    $page = ($pagesize*$pageg) - $pagesize;

    $keyword = $this->input->get('keyword');
    $sort = $this->input->get('sort');
    $sort = explode(',',$sort);
    $sort_col = 'id';
    $sort_dir = 'desc';
    if(count($sort)==2){
      $sort_col = $sort[0];
      $sort_dir = $sort[1];
    }
    switch($sort_col){
      case 'nama':
        $sort_col = 'nama';
        break;
      case 'cdate':
        $sort_col = 'cdate';
        break;
      default:
        $sort_col = 'id';
    }
    if($keyword<=2){
      $keyword = "";
    }



    $data = array();
    $data['page'] = $pageg;
    $data['pagesize'] = $pagesize;
    $data['count'] = (int) $this->produk->countAll($keyword);
    $data['produk'] = $this->produk->getAll($page,$pagesize,$sort_col,$sort_dir,$keyword);
    $this->__json_out($data);
	}
  public function detail($id){
    $this->status = 590;
    $this->message = 'Error';

    $data = new stdClass();

    $id = (int) $id;
    if($id>0){
      $this->status = 100;
      $this->message = 'Berhasil';
      $data = $this->produk->getById($id);
			if(isset($data->image)) $data->image = base_url('media/'.$data->image);
    }
    $this->__json_out($data);
  }

}
