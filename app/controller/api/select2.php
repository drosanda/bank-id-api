<?php
class Select2 extends JI_Controller{

  public function __construct(){
    parent::__construct();
    $this->setTheme('front');
    $this->load('api/a_bank_model',"abm");
  }

	public function index(){
		$d = $this->__init();
		$data = array();

		$keyword = $this->input->request("keyword");
    $keyword = trim(strip_tags($keyword));
    if(strlen($keyword)<=0){
  		$this->status = 200;
  		$this->message = 'Keyword too short';
    }else{
      $this->status = 200;
  		$this->message = 'Berhasil';
      $data = $this->abm->getSelect2($keyword);
    }
		$this->__json_out($data);
	}
}
