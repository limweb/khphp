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
					Billdetail::where('bill_id',$ill->id)->delete();
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
