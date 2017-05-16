<?php
require_once __DIR__.'/../libs/RestfulServer.php';
use Illuminate\Database\Capsule\Manager as Capsule; 

class  LotService extends RestfulServer {
		protected $usedb = true;
		public function __construct() {
			parent::__construct();
		}

		public function index(){
			echo 'LotService';
		}

	    public function permalink($id=null) {
	    	try {
	    		$o = new stdClass();
			    	$lot =  Lot::find($id);
			    	if($lot) {
			    		foreach($lot->bills as $bill) {
			    			($bill ? 	$bill->billdetails : null );
			    		}
			    	}
	    		$o->data = $lot;
	    		$this->response($o,'json');
	    	} catch (Exception $e) {
	    		$this->rest_error(-1,$e->getMessage(),'json',0); //or
	    	}
	    }	    

	    public function postLotbyname($lotname=null) {
	    // public function getLotbyname($lotname=null) {
	    	try {
	    		$o = new stdClass();
			    	$lot =  Lot::where('lot_name',$lotname)->leftjoin('categories as c','c.id','=','lots.cate')->select('lots.*','c.name')->first();
			    	if($lot) {
			    		foreach($lot->bills as $bill) {
			    			if($bill){
			    				foreach ($bill->billdetails as &$details) {
			    					$details->item = json_decode($details->item);
			    				}
			    			}  
			    		}
			    		$lot->summary = Capsule::select('SELECT billdetails.product_id, Sum(qty) AS qty, Sum(qty * price) / sum(qty) AS avg, products.`name`,products.product_code FROM billdetails LEFT JOIN products ON billdetails.product_id = products.id WHERE lot_name = ? GROUP BY lot_id, product_id',[$lotname]);
			    		$lot->sumx = Capsule::select('SELECT IFNULL(sum(qty), 0) AS qty, IFNULL(sum(qty * price), 0) AS total, IFNULL(sum(qty * price) / sum(qty), 0) AS avg FROM billdetails WHERE lot_name = ? ',[$lotname]);
			    	}
			    // $this->dump($lot); exit();
	    		$o->data = $lot;
	    		$this->response($o,'json');
	    	} catch (Exception $e) {
	    		$this->rest_error(-1,$e->getMessage(),'json',0); //or
	    	}
	    }

	    protected function all($columns = null)
	    {
	        $rs = new stdClass();

	        if ($this->model) {
	            if ($columns && is_array($columns)) {
	                $rs->data = $this->model->orderBy('id','desc')->get($columns);
	            } else {
	                $rs->data = $this->model->orderBy('id','desc')->get();
	            }
	        } else {
	            $rs->data = [];
	        }

	        if (strtolower($this->qrypath) == '/all') {
	            $this->response($rs, 'json');
	        } else {
	            return $rs->data;
	        }
	    }


		public function model(){
			return new Lot();
		}
}
header('Access-Control-Allow-Origin: *');  
header("Access-Control-Allow-Credentials: true");
header('Access-Control-Allow-Methods: GET, PUT, POST, DELETE, OPTIONS');
header('Access-Control-Max-Age: 1000');
header("Access-Control-Allow-Headers: *");
header('Access-Control-Allow-Headers: Content-Type, Content-Range, Content-Disposition, Content-Description');		
$lotservice = new LotService();
$lotservice->run();
