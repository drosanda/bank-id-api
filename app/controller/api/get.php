<?php
class Get extends JI_Controller{

  public function __construct(){
    parent::__construct();
    $this->setTheme('front');
    $this->load('api/a_bank_model',"abm");
  }

	public function index(){
		$d = $this->__init();
    $ddata = array();
		$dcount = 0;

		$keyword = $this->input->request("keyword");
    $keyword = trim(strip_tags($keyword));
    if(strlen($keyword)<=1){
  		$this->status = 200;
  		$this->message = 'Keyword too short';
    }else{
      $this->status = 200;
  		$this->message = 'Berhasil';
      $ddata = $this->abm->getAll(0,107,'nama','asc',$keyword);
      $dcount = $this->abm->countAll($keyword);
    }
		$this->__jsonDataTable($ddata,$dcount);
	}
}
