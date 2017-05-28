<?php
require_once __DIR__.'/../libs/RestfulServer.php';
use Illuminate\Database\Capsule\Manager as Capsule; 



class  ProductService extends RestfulServer {
		protected $usedb = true;
		public function __construct() {
			parent::__construct();
		}

		public function index(){
			echo 'ProductService';
		}

		public function getInit(){
			try {
				$o = new stdClass();
					$o->tableinfo = Capsule::select('SELECT information_schema.`COLUMNS`.COLUMN_NAME, information_schema.`COLUMNS`.DATA_TYPE, information_schema.`COLUMNS`.ORDINAL_POSITION, information_schema.`COLUMNS`.COLUMN_DEFAULT, information_schema.`COLUMNS`.IS_NULLABLE, CASE WHEN CHARACTER_MAXIMUM_LENGTH IS NOT NULL THEN CHARACTER_MAXIMUM_LENGTH WHEN NUMERIC_PRECISION IS NOT NULL THEN NUMERIC_PRECISION WHEN NUMERIC_SCALE IS NOT NULL THEN NUMERIC_SCALE WHEN DATA_TYPE = "timestamp" THEN CONCAT("19") WHEN DATA_TYPE = "datetime" THEN CONCAT("19") END AS DATALENGTH, information_schema.`COLUMNS`.COLUMN_KEY, information_schema.`COLUMNS`.EXTRA, information_schema.`COLUMNS`.COLUMN_COMMENT, concat("1") AS isEdit, concat("1") AS isNew, concat("") AS relatetb, concat("") AS relatetbfield FROM INFORMATION_SCHEMA. COLUMNS WHERE TABLE_SCHEMA = ? AND TABLE_NAME = ? ORDER BY ORDINAL_POSITION ASC',['kuihuad','products']);
					$o->datas = $this->model->get();
					$this->response($o,'json');
				} catch (Exception $e) {
					$this->rest_error(-1,$e->getMessage(),'json',0); //or
				}
		}


		public function getProduct(){
			echo 
			Product::get();
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
