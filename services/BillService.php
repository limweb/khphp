<?php
require_once __DIR__.'/../libs/RestfulServer.php';
require_once __DIR__.'/Updb.php';
use Illuminate\Database\Capsule\Manager as Capsule; 

class  BillService extends RestfulServer {
		protected $usedb = true;
		public function __construct() {
			parent::__construct();
		}

		public function index(){
			echo 'BillService';
		}
	    
	    public function permalink($id=null) {
	    	try {
	    		$o = new stdClass();
			    	$bill =  Bill::find($id);
			    	if($bill) {
						$bill->billdetails;
			    	}
	    		$o->data = $bill;
	    		$this->response($o,'json');
	    	} catch (Exception $e) {
	    		$this->rest_error(-1,$e->getMessage(),'json',0); //or
	    	}
	    }	



	    public function  postNewbill(){
	    	try {
	    		$o = new stdClass();
			 	Capsule::beginTransaction();
	    		//------------ lot -----------
	    		if($this->input->lot->id){
	    			$lot = Lot::find($this->input->lot->id);
	    		} else {
	    			$lot = new Lot();
					$lot->lot_name	= $this->input->lot->lot_name;
					$lot->cate	= $this->input->lot->cate;
					$lot->branch_id	= $this->input->lot->branch_id;
					$lot->save();
	    		}
	    		//------------- bill ----------------
		    		$bill = new Bill();
					$bill->branch_id = $this->input->bill->branch_id;
					$bill->lot_id    = $this->input->bill->lot_id;
					$bill->name      = $this->input->bill->name;
					$rs = $bill->save();
					if($this->input->bill->billdetails) {
						foreach ($this->input->bill->billdetails as $detail) {
							if($detail->product_id) {
								$billdetail = new Billdetail();
								$billdetail->bill_id    = $bill->id;
								$billdetail->branch_id  = $bill->branch_id;
								$billdetail->lot_id     = $bill->lot_id;
								$billdetail->lot_name   = $detail->lot_name;
								$billdetail->product_id = $detail->product_id;
								$billdetail->qtystr     = $detail->qtystr;
								$billdetail->qty        = $detail->qty;
								$billdetail->price      = $detail->price;
								$billdetail->save();
							}
						}
					}
			 	Capsule::commit();
				$updb = new Updb();
				$updb->updatedblotbyid($lot->id);
	    		$o->rs = 1;
	    		$o->msg = 'new bill insert successed';
	    		$o->bill = $bill;
		    	$o->insert_status = 1;
	    		$this->response($o,'json');
	    	} catch (Exception $e) {
			 	Capsule::rollback();
	    		$this->rest_error(-1,$e->getMessage(),'json',0); //or
	    	}
	    }

	    public function  postUpdatebillbyid($id) {
	    	try {
	    		$o = new stdClass();
	    		$bill = Bill::find($id);
	    		if($bill){
	    			Capsule::beginTransaction();
					($this->input->bill->name ? $bill->name = $this->input->bill->name : null ); 
					// $bill->billdetails->delete();
					Billdetail::where('bill_id',$bill->id)->delete();
					foreach($this->input->bill->billdetails as $detail ) {
						if($detail->product_id) {
							$billdetail = new Billdetail();
							$billdetail->bill_id    = $bill->id;
							$billdetail->branch_id  = $bill->branch_id;
							$billdetail->lot_id     = $bill->lot_id;
							$billdetail->lot_name   = $detail->lot_name;
							$billdetail->product_id = $detail->product_id;
							$billdetail->qtystr     = $detail->qtystr;
							$billdetail->qty        = $detail->qty;
							$billdetail->price      = $detail->price;
							$billdetail->save();
						}
					}
					$rs = $bill->save();
					Capsule::commit();
					$updb = new Updb();
					$updb->updatedblotbyid($bill->lot_id);
	    			$o->msg = 'updated successed';
	    			$o->bill = $bill;
		    		$o->update_status =$rs;
	    		}
	    		$this->response($o,'json');
	    	} catch (Exception $e) {
	    		Capsule::rollback();
	    		$this->rest_error(-1,$e->getMessage(),'json',0); //or
	    	}
	    }



	    public function postDelbillbyid($id) {
	    	try {
	    		$o = new stdClass();
	    		$bill = Bill::find($id);
	    		$rs = 0;
	    		if($bill){
				 	Capsule::beginTransaction();
				 		Billdetail::where('bill_id',$bill->id)->delete();
		    			// $bill->billdetails->delete();
			    		$lot_id = $bill->lot_id;
			    		$bill->delete();
 					Capsule::commit();
		    		$updb = new Updb();
					$updb->updatedblotbyid($lot_id);
		    		$rs = 1;
		    		$o->msg = 'deletesucdessed';
		    		$o->bill = $bill;
		    		$o->del_status =$rs;
	    		} 
	    		$this->response($o,'json');
	    	} catch (Exception $e) {
 				Capsule::rollback();
	    		$this->rest_error(-1,$e->getMessage(),'json',0); //or
	    	}
	    }

		public function postInsupbill() {  //main function for insert update  new lot new bill all in one 
			try {
				Capsule::enableQuerylog();
			 	Capsule::beginTransaction();
				$o = new stdClass();
				$o->name = __FUNCTION__;
				$o->input = $this->input;
				// $this->response($o,'json');
				if($this->input->lot_id == 0 && $this->input->lot_name ) {
					$lot = Lot::where('lot_name',$this->input->lot_name)->first();
					if(empty($lot)) {
						$lot = new Lot();
					} 
					$lot->branch_id  = ((isset($this->input->branch_id) && $this->input->branch_id) ? $this->input->branch_id : 1);
					$lot->lot_name = ($this->input->lot_name ? $this->input->lot_name : null);
					$lot->cate = ($this->input->cate ? $this->input->cate : null);
					$lot->date = ($this->input->date ? $this->input->date : null);
				} else {
					$lot = Lot::find($this->input->lot_id);
					$lot->cate = ($this->input->cate ? $this->input->cate : null);
					$lot->date = ($this->input->date ? $this->input->date : null);
				}

				$lot->save();  // update or insert lot  
				if($lot) {
					    $totalqty = 0;
						$totalamount = 0;
					if($this->input->id == 'NEW') {  // New Bill can Add and Save All
						$bill = new Bill();
						$bill->branch_id = $lot->branch_id;
						$bill->lot_id = $lot->id;
						$bill->lot_name = $lot->lot_name;
						$bill->name = ($this->input->name ? $this->input->name : null);
						$bill->qty = 0 ;
						$bill->total = 0 ;
						$bill->save();
						foreach( $this->input->billdetails as $billdetail ) {
							if( $billdetail->qty && $billdetail->price && $billdetail->product_id && $bill  && $lot ){
								$detail = new Billdetail();
								$detail->item  = json_encode($billdetail->item,JSON_UNESCAPED_UNICODE);
								$detail->branch_id  = $lot->branch_id;
								$detail->lot_id  = $lot->id;
								$detail->lot_name  = $lot->lot_name;
								$detail->bill_id  = $bill->id;
								$detail->product_id  = ($billdetail->product_id ? $billdetail->product_id : null );
								$detail->name  = ($billdetail->name ? $billdetail->name : null );
								$detail->qtystr  = ($billdetail->qtystr ? $billdetail->qtystr : null );
								$detail->qty  = ($billdetail->qty ? $billdetail->qty : 0 );
								$totalqty += $detail->qty;
								$detail->price  = ($billdetail->price ? $billdetail->price : 0 );
								$totalamount += $detail->price * $detail->qty;
								$detail->save();
							} // if check billdetail validate 
						} // foreach
	 				} else {  // else not New is  Update  and Delte Bill Items 
	 					$bill = Bill::find($this->input->id);
	 					if( empty($bill) || $bill->branch_id != $lot->branch_id || $bill->lot_id != $lot->id ){
	 						throw new Exception('Data Error brand or lot id is not parent', 1);
	 					}
	 					$bill->name = ($this->input->name ? $this->input->name : null);
	 					$bill->save();  // update bill only bill name
	 					// $biil->billdetails->delete();
	 					Billdetail::where('bill_id',$bill->id)->delete();
	 					foreach ($this->input->billdetails as $billdetail) {
							if( $billdetail->qty && $billdetail->price && $billdetail->product_id && $bill  && $lot ){
								$detail = new Billdetail();
								$detail->item  = json_encode($billdetail->item,JSON_UNESCAPED_UNICODE);
								$detail->branch_id  = $lot->branch_id;
								$detail->lot_id  = $lot->id;
								$detail->lot_name  = $lot->lot_name;
								$detail->bill_id  = $bill->id;
								$detail->product_id  = ($billdetail->product_id ? $billdetail->product_id : null );
								$detail->name  = ($billdetail->name ? $billdetail->name : null );
								$detail->qtystr  = ($billdetail->qtystr ? $billdetail->qtystr : null );
								$detail->qty  = ($billdetail->qty ? $billdetail->qty : 0 );
								$totalqty += $detail->qty;
								$detail->price  = ($billdetail->price ? $billdetail->price : 0 );
								$totalamount += $detail->price * $detail->qty;
								$detail->save();
							} // if check billdetail validate 
	 					}
					}
						$bill->qty = $totalqty;
						$bill->total = $totalamount;
						$bill->save();
				}
			 	Capsule::commit();
				$o->data = $this->lot($lot->lot_name);
				$o->bill = $this->bill($bill->id);
				$o->bill->cate = $o->data->cate;
				$o->bill->date = $o->data->date;
				$this->response($o,'json');
			} catch (Exception $e) {
			 	Capsule::rollback();
				$this->rest_error(-1,$e->getMessage(),'json',0); //or
			}
		}


		private function lot($lotname){
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
	    		return $lot;
		}

		private function bill($id) {
			$bill = Bill::find($id);
			foreach($bill->billdetails as $detail ) {
				$detail->item = json_decode($detail->item);
			}

			$bill->save = false;
			return $bill;
		}

		public function model(){
			return new Bill();
		}
}


header('Access-Control-Allow-Origin: *');  
header("Access-Control-Allow-Credentials: true");
header('Access-Control-Allow-Methods: GET, PUT, POST, DELETE, OPTIONS');
header('Access-Control-Max-Age: 1000');
header("Access-Control-Allow-Headers: *");
header('Access-Control-Allow-Headers: Content-Type, Content-Range, Content-Disposition, Content-Description');		
$billservice = new BillService();
$billservice->run();
