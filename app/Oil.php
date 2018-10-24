<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Oil extends Model
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
    	$engine = Oil::where('brand_id', $id)->get();
    	return $engine;
    }
}

