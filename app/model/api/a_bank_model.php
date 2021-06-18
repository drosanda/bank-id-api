<?php
class A_Bank_Model extends SENE_Model{
  var $tbl = 'a_bank';
  var $tbl_as = 'abm';

  public function __construct(){
    parent::__construct();
    $this->db->from($this->tbl,$this->tbl_as);
  }

  public function getAll($page='0',$pagesize='10',$sortCol="id",$sortDir="asc",$keyword=''){
    $this->db->cache_save=1;
    $this->db->from($this->tbl,$this->tbl_as);
    if(strlen($keyword) > 0){
      $this->db->where_as("$this->tbl_as.nama",$keyword,"OR","%like%",1,0);
      $this->db->where_as("$this->tbl_as.alamat",$keyword,"OR","%like%",0,0);
      $this->db->where_as("$this->tbl_as.website",$keyword,"OR","%like%",0,1);
    }
    $this->db->order_by($sortCol,$sortDir)->limit($page,$pagesize);
    return $this->db->get("object",0);
  }
  public function countAll($keyword=''){
    $this->db->cache_save=1;
    $this->db->flushQuery();
    $this->db->select_as("COUNT(*)","jumlah",0);
    $this->db->from($this->tbl,$this->tbl_as);
    if(strlen($keyword) > 0){
      $this->db->where_as("$this->tbl_as.nama",$keyword,"OR","%like%",1,0);
      $this->db->where_as("$this->tbl_as.alamat",$keyword,"OR","%like%",0,0);
      $this->db->where_as("$this->tbl_as.website",$keyword,"OR","%like%",0,1);
    }
    $d = $this->db->get_first("object",0);
    if(isset($d->jumlah)) return $d->jumlah;
    return 0;
  }

  public function getSelect2($keyword){
    $this->db->select_as("id","id",0);
    $this->db->select_as("nama","text",0);
    if(strlen($keyword) > 0){
      $this->db->where_as("$this->tbl_as.nama",$keyword,"OR","%like%",1,0);
      $this->db->where_as("$this->tbl_as.website",$keyword,"OR","%like%",0,1);
    }
    if(strlen($keyword)<=0) $this->db->limit(0,10);
    $this->db->order_by("$this->tbl_as.nama","asc");
    return $this->db->get();
  }

  public function getSearch($keyword=''){
    $this->db->cache_save=1;
    $this->db->select_as("$this->tbl_as.id","id",0);
    $this->db->select_as("$this->tbl_as.nama","text",0);
    $this->db->from($this->tbl,$this->tbl_as);
    if(strlen($keyword) > 0){
      $this->db->where_as("$this->tbl_as.nama",$keyword,"OR","%like%",1,0);
      $this->db->where_as("$this->tbl_as.website",$keyword,"OR","%like%",0,1);
    }
    $this->db->order_by("$this->tbl_as.nama","asc");
    return $this->db->get('',0);
  }
}
