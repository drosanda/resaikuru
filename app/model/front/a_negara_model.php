<?php
class A_Negara_Model extends SENE_Model{
	var $tbl = 'a_negara';
	var $tbl_as = 'an';
	public function __construct(){
		parent::__construct();
		$this->db->from($this->tbl,$this->tbl_as);
	}
	public function get(){
		$this->db->order_by('nama','asc')->limit(100);
		return $this->db->get();
	}
}
