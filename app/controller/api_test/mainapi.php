<?php
Class MainApi extends SENE_Controller {
  public function index(){
    $this->lib('mainapi_sms');
		$number = '085861264300';
    $content = 'hai, ada seseorang yang ingin menyumbangkan buku, silakan follow up';
    $this->mainapi_sms->setUsername('5tKBVB7X9Iebiph6XHLyGK9tbv0a');
    $this->mainapi_sms->setPassword('fQMGjCSeEVwMp8JfQZAvC6Vi4BMa');
    $jres = $this->mainapi_sms->send($number,$content);

    $content = 'Terimakasih atas sumbangan buku kamu, kami akan segera proses.';
		$number = '081910495590';
    $this->mainapi_sms->setUsername('5tKBVB7X9Iebiph6XHLyGK9tbv0a');
    $this->mainapi_sms->setPassword('fQMGjCSeEVwMp8JfQZAvC6Vi4BMa');
    $jres = $this->mainapi_sms->send($number,$content);
    // /error_log($jres);
    //echo $jres;
    //die();
    $res = json_decode($jres);
    if(json_last_error()){
      trigger_error($jres);
    }else{
      if(isset($res->fault)){
        echo 'Error bah';
      }else{
        echo 'oke';
      }
    }
  }
}
