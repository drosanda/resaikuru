<?php
class Account extends JI_Controller {
	var $email_send = 1;

	public function __construct(){
    parent::__construct();
		$this->setTheme('front');
		$this->load("front/b_user_model",'bu');
	}
	public function index(){
		$this->status = 404;
		header("HTTP/1.0 404 Not Found");
		$data = array();
		$this->__json_out($data);
	}
	public function login(){
		$email = $this->input->request("email");
		$password = $this->input->request("password");
		$data = new stdClass();
		if(strlen($email)>5){
			$res = $this->bu->auth(strtolower($email),$password);
			if(isset($res->id)){
				$this->lib("conumtext","token");
				$token = $this->token->genRand($type="str",$min=6,$max=10);
				//die($token);
				$this->status = 100;
				$this->message = 'Berhasil';
				$this->bu->setToken("api_web",$token,$res->id);
				$data = $res;
				$sess = $this->getKey();
				if(!is_object($sess)) $sess = new stdClass();
				if(!isset($sess->user)) $sess->user = new stdClass();
				$sess->user = $res;
				$this->user_login = 1;
				if($res->is_agree == "1" || $res->is_agree==1){
					$data->redirect_url = base_url().'account/dashboard';
				}else{
					$data->redirect_url = base_url().'account/syarat_ketentuan';
				}
				$this->setKey($sess);
			}else{
				$this->status = 102;
				$this->message = 'Kombinasi username atau password salah';
			}
		}else{
			$this->status = 101;
			$this->message = 'One or more parameter needed or parameter doesnt meet requirement';
		}
		$this->__json_out($data);
	}
	public function do_agree(){
		$dt = $this->__init();
		$data = array();
		$this->status = 400;
		$this->message = 'Harus login';
		if($this->user_login){
			$res = $this->bu->setAgree($dt['sess']->user->id);
			if($res){
				$this->status = 100;
				$this->message = 'Berhasil';
			}
		}else{
			header("HTTP/1.0 400 Harus login");
		}
		$this->__json_out($data);
	}
	public function email_check(){
		//sleep(1);
		$data = new stdClass();

		$this->status = 114;
		$this->message = '';

		$email = $this->input->post("email");
		if((strlen($email)>5)){
			$res = $this->bu->checkEmail($email);
			if($res){
				$this->status = 115;
				$this->message = 'Email Sudah digunakan';
			}else{
				$this->status = 100;
				$this->message = 'Email OK';
			}
		}
		$this->__json_out($data);
	}
	public function register(){
		$s = $this->__init();

		$data = new stdClass();

		$this->status = 401;
		$this->message = 'Maaf, jika sudah punya akun silakan login';

		$user_login = 0;
		if(isset($s['sess']->user->id)){
			$user_login = 1;
		}

		//if($user_login == 0){
			$data = new stdClass();
			$fnama = $this->input->post('fnama');
			$telp = $this->input->post('telp');
			$email = $this->input->post('email');
			$password = $this->input->post('password');
			$repassword = $this->input->post('repassword');
			if(
				(strlen($fnama)>1) &&
				(strlen($password)>5) &&
				(strlen($email)>5) &&
				(strlen($telp)>5)
			){
				$res = $this->bu->checkEmail($email);
				if($res){
					$this->status = 115;
					$this->message = 'Email Sudah digunakan';
				}else{
					if($password == $repassword){
						$di = array();
						$di['fnama'] = $fnama;
						$di['password'] = md5($password);
						$di['email'] = $email;
						$di['telp'] = $telp;
						$di['is_agree'] = 0;
						$di['is_confirmed'] = 0;
						$di['is_premium'] = 0;

						$res = $this->bu->register($di);
						if($res){
							$_REQUEST['email'] = $email;
							$_REQUEST['password'] = $password;

							$this->status = 100;
							$this->message = 'Berhasil, silakan tunggu';

							$this->login();
							die();
						}else{
							$this->status = 113;
							$this->message = 'Maaf, tidak dapat mendaftar sekarang. Silakan coba beberapa saat lagi';
						}

					}else{
						$this->status = 112;
						$this->message = 'Maaf, password sama repassword harus sama';
					}
				}
			}else{
				$this->status = 101;
				$this->message = 'Isian ada yang kurang, lengkapi!';
			}
		//}
		$this->__json_out($data);
	}
	private function __passwordGenerateLink($user_id){
		$this->lib("conumtext");
		$token = $this->conumtext->genRand($type="str",$min=18,$max=24);
		$this->bu->setToken($kind="api_web",$token,$user_id);
		return base_url('account/password/reset/'.$token);
	}
	private function __emailTemplate($nama,$link){
		$h  = '<p>Hai '.$nama.'</p>';
		$h .= '<p>Kabarnya kamu lupa password ya? Kalau iya buka aja link ini untuk reset passwordnya</p>';
		$h .= '<p><a href="'.$link.'">'.$link.'</a></p>';
		$h .= '<p>Kalau ga merasa, cukup hapus dan abaikan email ini yaa..</p>';
		$h .= '<br /><br /><br />';
		$h .= '<p>Demikian semoga membantu. <br />Salaam,<br />JangIman - Jasa Kirim Makanan</p>';
		return $h;
	}
	public function forgot(){
		$s = $this->__init();
		$data = new stdClass();

		$this->status = 120;
		$this->message = 'Sepertinya kamu pura-pura lupa password, silakan logout dulu baru reset password';

		$email = $this->input->post("email");
		if(empty($this->user_login)){
			if(strlen($email)>6){
				$user = $this->bu->getByEmail($email);
				if(isset($user->id)){
					if($this->email_send){
						$link = $this->__passwordGenerateLink($user->id);

						$h = $this->__emailTemplate($user->fnama,$link);

						$this->lib('sene_email_sender');
						$this->sene_email_sender->from("JangIman","admin@jangiman.com");
						$this->sene_email_sender->to($user->email,$user->fnama);
						$this->sene_email_sender->subject("Lupa Password");
						$this->sene_email_sender->html($h);
						$this->sene_email_sender->send();
					}

				}else{

				}
				$this->status = 100;
				$this->message = 'Berhasil';
			}else{
				$this->status = 121;
				$this->message = 'Sepertinya email yang kamu masukan belum benar, coba cek kembali';
			}
		}
		$this->__json_out($data);
	}
	public function sms(){
		$this->lib('mainapi_sms');
		$number = '085861264300';
    $content = 'hai, ada seseorang yang ingin menyumbangkan buku, silakan difollow up';
    $this->mainapi_sms->setUsername('5tKBVB7X9Iebiph6XHLyGK9tbv0a');
    $this->mainapi_sms->setPassword('fQMGjCSeEVwMp8JfQZAvC6Vi4BMa');
    $jres = $this->mainapi_sms->send($number,$content);

    $content = 'Terimakasih atas sumbangan bukunya, kami akan segera proses.';
		$number = '081910495590';
    $this->mainapi_sms->setUsername('5tKBVB7X9Iebiph6XHLyGK9tbv0a');
    $this->mainapi_sms->setPassword('fQMGjCSeEVwMp8JfQZAvC6Vi4BMa');
    $jres = $this->mainapi_sms->send($number,$content);
    $res = json_decode($jres);
    if(json_last_error()){
			$this->message = 'Error Server API';
			$this->status = 500;
		}else{
			if(isset($res->fault)){
				$this->message = 'Error request api';
				$this->status = 500;
      }else{
				$this->message = 'Berhasil';
				$this->status = 100;
      }
		}
		$data = new stdClass();
		$this->__json_out($data);
	}

}
