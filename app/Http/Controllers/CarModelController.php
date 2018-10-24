<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\CarBrand;
use App\CarModel;

class CarModelController extends Controller
{
    public function getModels($brand_id){
        $cars = new CarBrand();
        $cars = $cars->getModels($brand_id);

        return view('models', ['cars' => $cars]);
    }

    public function getModel($id){
        $model = new CarModel();
        $model = $model->getModel($id);

        return view('model', ['model' => $model]);
    }
}
