<?php
Class MainApi_SMS {
  var $username;
  var $password;
  var $postdata;
  var $base_url = 'https://api.mainapi.net/smsnotification/1.0.0';
  var $token;
  var $bearer;
  public function setUsername($username){
    $this->username = $username;
  }
  public function setPassword($password){
    $this->password = $password;
  }
  public function setToken($token){
    $this->token = $token;
  }
  public function auth(){
    $url = 'https://api.mainapi.net/token';
    if(empty($this->username)){
      trigger_error('Please specify your number first!');
      return false;
    }
    if(empty($this->password)){
      trigger_error('Please fill the content!');
      return false;
    }

    $ch = curl_init();
    curl_setopt($ch, CURLOPT_URL, $url);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
    curl_setopt($ch, CURLOPT_ENCODING,'');
    curl_setopt($ch, CURLOPT_MAXREDIRS,10);
    curl_setopt($ch, CURLOPT_TIMEOUT,30);
    curl_setopt($ch, CURLOPT_HTTP_VERSION, CURL_HTTP_VERSION_1_1);
    curl_setopt($ch, CURLOPT_CUSTOMREQUEST, 'POST');
		curl_setopt($ch, CURLOPT_POSTFIELDS,'grant_type=client_credentials');
    //curl_setopt($ch, CURLOPT_VERBOSE, 1);
		//curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, 0);
		//curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, 0);


    curl_setopt($ch, CURLOPT_HTTPHEADER, array(
      'authorization: Basic '.base64_encode($this->username.':'.$this->password),
      'content-type: application/x-www-form-urlencoded',
    ));

    //curl_setopt($ch, CURLOPT_HEADER, 1);
    //curl_setopt($ch, CURLOPT_VERBOSE, 1);

    //$hes = json_encode(curl_getinfo($ch));
		$jres = curl_exec($ch);
		curl_close($ch);
		//return $res;
    $res = json_decode($jres);
    if(json_last_error()){
      error_log($jres);
      return false;
    }else{
      //var_dump($res);
      //die();
      if(isset($res->access_token)){
        $this->bearer = $res->access_token;
        return true;
      }else{
        error_log($jres);
        return false;
      }
    }
  }
  public function send($number,$content){
    $this->auth();
    if(empty($this->bearer)){
      trigger_error('Failed bearer!');
      return false;
    }
    $url = $this->base_url.'/messages';
    $ch = curl_init();
    curl_setopt_array($ch, array(
      CURLOPT_URL => $url,
      CURLOPT_RETURNTRANSFER => true,
      CURLOPT_ENCODING => "",
      CURLOPT_MAXREDIRS => 10,
      CURLOPT_TIMEOUT => 30,
      CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
      CURLOPT_CUSTOMREQUEST => "POST",
      CURLOPT_POSTFIELDS => "msisdn=".$number.'&content='.urlencode($content).'',
      CURLOPT_HTTPHEADER => array(
        "accept: application/json",
        "authorization: Bearer 674dc7a37317541f537ccf6932f8d8aa",
        "cache-control: no-cache",
        "content-type: application/x-www-form-urlencoded",
        "postman-token: bce20436-2660-281d-b447-7f213304cb0b"
      ),
    ));
		$res = curl_exec($ch);
		curl_close($ch);
		return $res;
  }
}
