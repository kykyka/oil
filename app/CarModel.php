<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class CarModel extends Model
{
    public function brand(){
        return $this->belongsTo('App\CarBrand');
    }

    public function getModel($id){
        $model = CarModel::where('id', $id)->first();
        // $oils = $model->certificate();
        // var_dump($model);
        return $model;

    }
}
