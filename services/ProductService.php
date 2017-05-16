<?php
require_once __DIR__.'/../libs/RestfulServer.php';

class  ProductService extends RestfulServer {
		protected $usedb = true;
		public function __construct() {
			parent::__construct();
		}

		public function index(){
			echo 'ProductService';
		}


		public function getProduct(){
			echo Product::get();
		}

		public function model(){
			return new Product();
		}
}

header('Access-Control-Allow-Origin: *');  
header("Access-Control-Allow-Credentials: true");
header('Access-Control-Allow-Methods: GET, PUT, POST, DELETE, OPTIONS');
header('Access-Control-Max-Age: 1000');
header("Access-Control-Allow-Headers: *");
header('Access-Control-Allow-Headers: Content-Type, Content-Range, Content-Disposition, Content-Description');		
$productservice = new ProductService();
$productservice->run();
