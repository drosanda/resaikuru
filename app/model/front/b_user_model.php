<?php
class B_User_model extends SENE_Model{
	var $tbl = 'b_user';
	var $tbl_as = 'bu';
	public function __construct(){
		parent::__construct();
		$this->db->from($this->tbl,$this->tbl_as);
	}
	public function auth($email,$password){
		$this->db
			->select("*")
			->select_as("COALESCE(api_web_token,'-')",'api_web_token',0)
			->where_as("is_deleted",'0')
			->where_as("email",$email)
			->where_as("password",md5($password));
		return $this->db->get_first('object',0);
	}
	public function checkToken($kind="api_web",$token){
		$dt = $this->db->where($kind.'_token',$token)->get();
		if(count($dt)>1){
			foreach($dt as $d){
				$this->setToken($kind,"NULL",$d->id);
			}
			return false;
		}else if(count($dt)==1){
			return true;
		}else{
			return false;
		}
	}
	public function setToken($kind="api_web",$token,$id){
		$du = array($kind.'_token'=>$token);
		return $this->db->where("id",$id)->update($this->tbl,$du);
	}
	public function setAgree($id){
		$du = array('is_agree'=>'1');
		return $this->db->where("id",$id)->update($this->tbl,$du);
	}
	public function register($di=array()){
		$this->db->insert($this->tbl,$di,0,0);
		return $this->db->lastId();
	}
	public function update($id,$du){
		if(!is_array($du)) return 0;
		$this->db->where("id",$id);
    return $this->db->update($this->tbl,$du,0);
	}
	public function checkEmail($email){
		$this->db->where("email",$email);
		$d = $this->db->get();
		if(isset($d[0]->email)) return 1;
		return 0;
	}
	public function getByEmail($email){
		$this->db->where("email",$email);
		$d = $this->db->get();
		if(isset($d[0]->id)){
			return $d[0];
		}else{
			return new stdClass();
		}
	}
}
