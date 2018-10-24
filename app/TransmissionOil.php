<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class TransmissionOil extends Model
{
    public function brands(){
        return $this->belongsTo('App\OilBrands');
    }
    
    public function certificate(){
        return $this->hasMany('App\Certificate');
    }

    public function tds(){
        return $this->hasMany('App\Tds');
    }

    public function getOils($id){
    	$transmission = TransmissionOil::where('brand_id', $id)->get();
    	return $transmission;
    }
}
