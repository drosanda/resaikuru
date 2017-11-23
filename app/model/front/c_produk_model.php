<?php
class C_Produk_Model extends SENE_Model{
	var $tbl = 'c_produk';
	var $tbl_as = 'cp';
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
	public function getAll($page=0,$pagesize=10,$sortCol="id",$sortDir="DESC",$keyword="",$sdate="",$edate=""){
		$this->db->flushQuery();
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
    $this->db->select_as('cp.*, bk.nama kategori, bu.fnama','nama_seller',0);
    $this->db->join('b_user','bu','id',$this->tbl_as,'b_user_id','left');
    $this->db->join('b_kategori','bk','id',$this->tbl_as,'b_kategori_id','left');
		$this->db->where("$this->tbl_as.id",$id);
		return $this->db->get_first("object",0);
	}
	public function getByUserId($b_user_id){
		$this->db->where('b_user_id',$b_user_id);
		return $this->db->get("object",0);
	}
	public function getByKategoriId($b_kategori_id,$limit=3){
		$this->db->where('b_kategori_id',$b_kategori_id)->limit(0,$limit);
		return $this->db->get("object",0);
	}
}
