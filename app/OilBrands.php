<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class OilBrands extends Model
{
    public function engineOils(){
        return $this->hasMany('App\Oil');
    }

    public function transmissionOils(){
        return $this->hasMany('App\TransmissionOil');
    }

    public function getBrands(){
    	$brands = OilBrands::all();
    	return $brands;
    }
}
