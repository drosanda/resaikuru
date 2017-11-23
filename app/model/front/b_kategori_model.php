<?php
class B_Kategori_Model extends SENE_Model{
	var $tbl = 'b_kategori';
	var $tbl_as = 'bk';
	public function __construct(){
		parent::__construct();
		$this->db->from($this->tbl,$this->tbl_as);
	}
	public function insert($di=array()){
		$this->db->insert($this->tbl,$di,0,0);
		return $this->db->lastId();
	}
	public function update($id,$du){
		if(!is_array($du)) return 0;
		$this->db->where("id",$id);
    return $this->db->update($this->tbl,$du,0);
	}
	public function getAll($page=0,$pagesize=10,$sortCol="sku",$sortDir="ASC",$keyword="",$sdate="",$edate=""){
		$this->db->flushQuery();
		$this->db->select('id');
		$this->db->select('utype');
		$this->db->select('nama');
		$this->db->select('is_visible');
		$this->db->select('is_active');
		$this->db->from($this->tbl,$this->tbl_as);
		if(strlen($keyword)>1){
			$this->db->where("utype",$keyword,"OR","%like%",1,0);
			$this->db->where("nama",$keyword,"OR","%like%",0,0);
			$this->db->where("deskripsi",$keyword,"OR","%like%",0,1);
		}
		$this->db->order_by($sortCol,$sortDir)->limit($page,$pagesize);
		return $this->db->get("object",0);
	}
	public function countAll($keyword="",$sdate="",$edate=""){
		$this->db->flushQuery();
		$this->db->select_as("COUNT(*)","jumlah",0);
		if(strlen($keyword)>1){
			$this->db->where("utype",$keyword,"OR","%like%",1,0);
			$this->db->where("nama",$keyword,"OR","%like%",0,0);
			$this->db->where("deskripsi",$keyword,"OR","%like%",0,1);
		}
		$d = $this->db->from($this->tbl)->get_first("object",0);
		if(isset($d->jumlah)) return $d->jumlah;
		return 0;
	}
	public function getById($id){
		$this->db->where("id",$id);
		return $this->db->get_first("object",0);
	}
	public function getByUtype($utype){
		$this->db->where('utype',$utype);
		$this->db->limit(100);
		return $this->db->get("object",0);
	}
	public function getKategori($is_active=1){
		$this->db->where('is_active',$is_active);
		return $this->db->get("object",0);
	}
	public function getColor(){
		return $this->getByUtype('color');
	}
	public function getSize(){
		return $this->getByUtype('size');
	}
}
