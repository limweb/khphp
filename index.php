<?php
require_once __DIR__.'/libs/RestfulServer.php';
use Illuminate\Database\Capsule\Manager as Capsule;
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: GET, POST');  

class  AppService extends RestfulServer {

	protected $usedb = false;
	public $options;
	protected $headeroption;
	protected $pages = [];

	public function __construct() {
		parent::__construct();
		$this->page_id  = 0;
		$opt = Option::all()->toArray();
		$this->options = new Optdata($opt);
		$this->headeroption = [];
		$this->barnchid = 1;
	}


	public function getGet(){
		foreach ($this->methodget as $get) {
			$get =(object) $get;
			if(strtolower($get->path) == strtolower($this->request[0])){
				array_shift($this->request);
				call_user_func_array([$this,$get->method], $this->request );
				return;
			}
		}
		$this->index();
		exit();
	}

	public function index(){
		// $this->dump($this);
		// $this->dump(Page::get()); exit();
		include __DIR__.'/pages/index.html';
	}

	public function model(){
		return new Page();
	}

	public function __set($prop, $value ) {
		$this->$prop = $value;
	}

	public function configdata(){
		$o = new stdClass();
		$o->lang = $this->language;
		return json_encode($o);
	}

}

$app = new AppService();
$app->run();
