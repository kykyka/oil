<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class CarBrand extends Model
{
    public function models(){
        return $this->hasMany('App\CarModel');
    }

    public function certificates()
    {
        return $this->hasMany('App\BrabdCertificate');
    }
    public function getBrands(){
        
        $brands = CarBrand::all();
        return $brands;
    }
    
    public function getModels($brand_id){
        $models = CarModel::where('car_brand_id', $brand_id)->get();
        return $models;
    }
}
