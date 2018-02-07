<?php
	Class JI_Controller extends SENE_Controller {
		var $site_title = 'Risaikuru | Everything is Useful';
		var $site_description = 'Risaikuru | Everything is Useful';
		var $site_suffix = ' | Risaikuru';
		var $site_keyword = 'Everything is Useful';
		var $page_current = 'beranda';
		var $menu_current = 'beranda';
		var $site_author = 'TheCloudAlert';
		var $user_login = 0;
		var $admin_login = 0;
		var $status = 404;
		var $message = 'Error, not found!';
		var $breadcrumbs;
		var $skins;

		var $user_img = 'media/user/';
		var $user_toko = 'media/user/store/';
		var $produk_foto = 'media/produk/';
		var $produk_thumb = 'media/produk/thumb/';
		var $order_konfirmasi = 'media/order/konfirmasi/';
		var $order_qc = 'media/order/qc/';
		var $order_packing = 'media/order/packing/';
		var $order_resi = 'media/order/resi/';


		public function __json_out($dt){
			$this->lib('sene_json_engine','sene_json');
			$data = array();
			$data["status"]  = (int) $this->status;
			$data["message"] = $this->message;
			$data["result"]  = $dt;
			$this->sene_json->out($data);
			die();
		}
		public function __breadCrumb($name="home",$url="#",$title=""){
			$bc = new stdClass();
			$bc->name = $name;
			$bc->url = $url;
			$bc->title = $title;
			$this->breadcrumbs[] = $bc;
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

		public function __construct(){
			parent::__construct();
			$this->breadcrumbs = array();
			$this->skins = new stdClass();
			$this->skins->front = base_url('skin/front/');
			$this->skins->homepage = base_url('skin/homepage/');
			$this->skins->admin = base_url('skin/admin/');
		}
		public function __init(){
			$this->load('front/b_kategori_model','bk');
			$data = array();
			$sess = $this->getKey();
			if(!is_object($sess)) $sess = new stdClass();
			if(!isset($sess->user)) $sess->user = new stdClass();
			if(isset($sess->user->id)) $this->user_login = 1;

			if(!isset($sess->admin)) $sess->admin = new stdClass();
			if(isset($sess->admin->id)) $this->admin_login = 1;

			$data['sess'] = $sess;
			$data['site_title'] = $this->site_title;
			$data['site_description'] = $this->site_description;
			$data['page_current'] = $this->page_current;
			$data['menu_current'] = $this->menu_current;
			$data['site_author'] = $this->site_author;
			$data['site_keyword'] = $this->site_keyword;
			$data['user_login'] = $this->user_login;
			$data['admin_login'] = $this->admin_login;
			$data['skins'] = $this->skins;

			$data['produk_kategori'] = $this->__menuBuilder($this->bk->getKategori());

			$this->setTitle($this->site_title);
			$this->setDescription($this->description);
			$this->setRobots('INDEX,FOLLOW');
			$this->setAuthor($this->site_author);
			$this->setKeyword($this->site_keyword);
			$this->setIcon(base_url('favicon.png'));
			$this->setShortcutIcon(base_url('favicon.png'));

			return $data;
		}
		public function __jsonDataTable($data,$count,$another=array()){
			$this->lib('sene_json_engine','sene_json');
			$rdata = array();
			if(!is_array($data)) $data = array();
			$dt1 = array();
			$dt2 = array();
			if(!is_array($data)){
				trigger_error('jsonDataTable first params need array!');
				die();
			}
			foreach($data as $dat){
				$dt2 = array();
				if(is_int($dat)) trigger_error('[ERROR: '.$dat.'] Data table not well performed because a query execution error!');
				foreach($dat as $dt){
					$dt2[] = $dt;
				}
				$dt1[] = $dt2;
			}

			if(is_array($another)) $rdata = $another;
			$rdata['data'] = $dt1;
			$rdata['recordsFiltered'] = $count;
			$rdata['recordsTotal'] = $count;
			$rdata['status'] = (int) $this->status;
			$rdata['message'] = $this->message;
			$this->sene_json->out($rdata);
			die();
		}
		//karena ini wajib jadi method ini harus ada... :P
		public function index(){}

	}
