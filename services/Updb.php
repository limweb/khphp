<?php
use Illuminate\Database\Capsule\Manager as Capsule; 

class  Updb  {

	public function updatedblotbyid($lotid) {
		$lot = Lot::find($lotid);
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
				$lotqty += $sumqty;
				$lottotal  += $sumtotal;
			}
		$lot->qty = $lotqty;
		$lot->total = $lottotal;
		$lot->avg = ( $lotqty ? $lottotal/$lotqty : 0 );
		$lot->save();		
	}

	public function updatedb() {
		$lots = Lot::orderBy('id','desc')->take(30)->get();
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
				$lotqty += $sumqty;
				$lottotal  += $sumtotal;
			}
			$lot->qty = $lotqty;
			$lot->total = $lottotal;
			$lot->avg = ( $lotqty ? $lottotal/$lotqty : 0 );
			$lot->save();		
		}
	}

}

// $updb = new Updb();
// $updb->updatedb();