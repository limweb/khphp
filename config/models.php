<?php
use Illuminate\Database\Capsule\Manager as Capsule;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Eloquent\Model;

class Lang  extends  Model  { 
        protected  $table='langs';
        protected  $primaryKey='id';
        public $timestamps = false;
}

class Option extends  Model {
    
    // $fill = 'pop_id','pop_key','pop_value';
    protected $primaryKey = 'pop_id';
    public $timestamps = false;
    protected $table = 'page_option';
}


class Branch  extends  Model  { 

        protected  $table='branchs';
        protected  $primaryKey='id';
        public $timestamps = true;
        public function __construct(array $attributes = []) {
            parent::__construct($attributes);
        }
        const CREATED_AT = 'created_date';
        const UPDATED_AT = 'updated_date';
}

class Category  extends  Model  { 
        
        protected  $table='categories';
        protected  $primaryKey='id';
        public $timestamps = true;

        public function __construct(array $attributes = []) {
            parent::__construct($attributes);
        }

        const CREATED_AT = 'created_date';
        const UPDATED_AT = 'updated_date';
        
}

class Bill  extends  Model  { 
        
        protected  $table='bills';
        protected  $primaryKey='id';
        public $timestamps = true;

        public function __construct(array $attributes = []) {
            parent::__construct($attributes);
        }

        const CREATED_AT = 'created_date';
        const UPDATED_AT = 'updated_date';

        public function billdetails() {
            return $this->hasMany('Billdetail')->leftjoin('products','products.id','=','billdetails.product_id');
        }


}

class Billdetail  extends  Model  { 
        
        protected  $table='billdetails';
        protected  $primaryKey='id';
        public $timestamps = true;

        public function __construct(array $attributes = []) {
            parent::__construct($attributes);
        }

        const CREATED_AT = 'created_date';
        const UPDATED_AT = 'updated_date';
}

class Page  extends  Model  { 
        
        protected  $table='page';
        protected  $primaryKey='id';
        public $timestamps = true;

        public function __construct(array $attributes = []) {
            parent::__construct($attributes);
        }

        const UPDATED_AT = 'update_date';
        const CREATED_AT = 'create_date';

}

class Lot  extends  Model  { 
        
        protected  $table='lots';
        protected  $primaryKey='id';
        public $timestamps = true;

        public function __construct(array $attributes = []) {
            parent::__construct($attributes);
        }

        const CREATED_AT = 'created_date';
        const UPDATED_AT = 'updated_date';

        public function bills() {
            return $this->hasMany('Bill')->orderBy('created_date','desc');
        }
}

class Product  extends  Model  { 
        
        protected  $table='products';
        protected  $primaryKey='id';
        public $timestamps = true;

        public function __construct(array $attributes = []) {
            parent::__construct($attributes);
        }
        const CREATED_AT = 'created_date';
        const UPDATED_AT = 'updated_date';
}

class Supplier  extends  Model  { 
        
        protected  $table='suppliers';
        protected  $primaryKey='id';
        public $timestamps = true;

        public function __construct(array $attributes = []) {
            //$this->setRawAttributes(['expire_date' => Carbon::now()->addDays(7)],true);
            parent::__construct($attributes);
        }
}