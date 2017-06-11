<?php
require_once __DIR__.'/../libs/RestfulServer.php';
use Illuminate\Database\Capsule\Manager as Capsule; 

class  AppService extends RestfulServer {

		public function __construct() {
			parent::__construct();
		}

		public function index(){
			echo 'AppService';
		}

		public function postInit() {
			try {

				$this->getUpdateallbills();
				$o = new stdClass();
				$rs = Branch::get();
				$o->branchs = $rs;
				$o->suppliers = Supplier::get();
				$o->branch = Branch::find(1);
				$o->categories = Category::get();
				$o->lots = Lot::leftjoin('categories as c','c.id','=','lots.cate')->select('lots.*','c.name')->where('branch_id',$o->branch->id)->orderBy('lot_name','desc')->get();
				foreach ($o->lots as $lot) {
					foreach($lot->bills as $bill){
						$bill->billdetails;
					}
					$lot->summary = Capsule::select('SELECT billdetails.product_id, Sum(qty) AS qty,Sum(qty * price) as total, Sum(qty * price) / sum(qty) AS avg, products.`name`, products.product_code FROM billdetails LEFT JOIN products ON billdetails.product_id = products.id WHERE lot_name = ? GROUP BY lot_id, product_id ORDER BY products.category_id ASC, products.product_code ASC',[$lot->lot_name]);
			    	$lot->sumx = Capsule::select('SELECT IFNULL(sum(qty), 0) AS qty, IFNULL(sum(qty * price), 0) AS total, IFNULL(sum(qty * price) / sum(qty), 0) AS avg FROM billdetails WHERE lot_name = ? ',[$lot->lot_name]);

			    	$lot->sumbycat = Capsule::select('SELECT billdetails.product_id, Sum(billdetails.qty) AS qty,Sum(qty * price) as total, Sum(qty * price) / sum(qty) AS avg, products.category_id, categories.`name` FROM billdetails LEFT JOIN products ON billdetails.product_id = products.id INNER JOIN categories ON categories.id = products.category_id WHERE lot_name = ? GROUP BY products.category_id',[$lot->lot_name]);
				}
				$o->products = Product::orderby('category_id','asc')->orderBy('product_code','asc')->get();
				// $o->summary = Capsule::select('SELECT sum(qty) AS total, sum(qty * price) AS sumamount, sum(qty * price) / sum(qty) AS avg, p. NAME FROM billdetails bd LEFT JOIN products p ON p.id = bd.product_id  where branch_id = 1 GROUP BY product_id;',[]);

				// $summaryall = Capsule::select('SELECT sum(qty) AS qty, sum(qty * price) AS total, sum(qty * price) / sum(qty) AS avg FROM billdetails  where branch_id = 1 ',[]);
				// if($summaryall) {
				// 	$o->summaryall = (object) $summaryall[0];
				// }
				// $this->dump($o); exit();
				$this->response($o,'json');
			} catch (Exception $e) {
				$this->rest_error(-1,$e->getMessage(),'json',0); //or
			}
		}

		public function getInit() {
		   	try {
				$o = new stdClass();
				$rs = Branch::get();
				// $o->branchs = $rs;
				$o->branch = Branch::find(1);
				// $o->categories = Category::orderBy('sort','asc')->get();
				$o->categories = Capsule::select('SELECT * FROM `categories` ORDER BY sort ASC');
				$o->lots = Lot::where('branch_id',$o->branch->id)->orderBy('id','asc')->get();
				foreach ($o->lots as $lot) {
					foreach($lot->bills as $bill){
						$bill->billdetails;
					}
				}
				$o->products = Product::get();
				$o->summary = Capsule::select('SELECT sum(qty) AS total, sum(qty * price) AS sumamount, sum(qty * price) / sum(qty) AS avg, p. NAME FROM billdetails bd LEFT JOIN products p ON p.id = bd.product_id  where branch_id = 1 GROUP BY product_id;',[]);

				$summaryall = Capsule::select('SELECT sum(qty) AS qty, sum(qty * price) AS total, sum(qty * price) / sum(qty) AS avg FROM billdetails  where branch_id = 1 ',[]);
				if($summaryall) {
					$o->summaryall = (object) $summaryall[0];
				}
				$this->dump($o->lots[0]);
				$this->dump($o); exit();
				$this->response($o,'json');
			} catch (Exception $e) {
				$this->rest_error(-1,$e->getMessage(),'json',0); //or
			}
		}


		public function getUpdateallbills() {
			try {
				$o = new stdClass();
				$lots = Lot::take(3)->get();
				foreach($lots as $lot) {
					$lotqty = 0;
					$lottotal = 0;
						$bills = $lot->bills;
						foreach($bills as $bill ){
							$sumqty = 0;
							$sumtotal = 0;
							foreach($bill->billdetails as $bd ){
								$sumqty += $bd->qty;
								$sumtotal +=$bd->qty * $bd->price;
							}

							$bill->qty = $sumqty;
							$bill->total = $sumtotal;
							$bill->save();
							// $o->sumqty = $billdetails->sum('qty');
							// $o->sumtotal('qty*total');
							// $bill->
						$lotqty += $bill->qty;
						$lottotal  += $bill->total;
						}

				$lot->qty = $lotqty;
				$lot->total = $lottotal;
				if($lotqty){
					$lot->avg = $lottotal/$lotqty;
				} else {
					$lot->avg =0;
				}

				$lot->save();		
				}
			} catch (Exception $e) {
				$this->rest_error(-1,$e,'json',$e->getCode());                   
			}
			
		}

		public function model(){
			return null;
		}
}

header('Access-Control-Allow-Origin: *');  
header("Access-Control-Allow-Credentials: true");
header('Access-Control-Allow-Methods: GET, PUT, POST, DELETE, OPTIONS');
header('Access-Control-Max-Age: 1000');
header("Access-Control-Allow-Headers: *");
header('Access-Control-Allow-Headers: Content-Type, Content-Range, Content-Disposition, Content-Description');		
$appservice = new AppService();
$appservice->run();



