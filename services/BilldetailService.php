<?php
require_once __DIR__.'/../libs/RestfulServer.php';

class  BilldetailService extends RestfulServer {
		protected $usedb = true;
		public function __construct() {
			parent::__construct();
		}

		public function index(){
			echo 'BilldetailService';
		}

		public function model(){
			return new Billdetail();
		}
}

header('Access-Control-Allow-Origin: *');  
header("Access-Control-Allow-Credentials: true");
header('Access-Control-Allow-Methods: GET, PUT, POST, DELETE, OPTIONS');
header('Access-Control-Max-Age: 1000');
header("Access-Control-Allow-Headers: *");
header('Access-Control-Allow-Headers: Content-Type, Content-Range, Content-Disposition, Content-Description');		
$billdetailservice = new BilldetailService();
$billdetailservice->run();
