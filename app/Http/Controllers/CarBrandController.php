<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\CarBrand;

class CarBrandController extends Controller
{
    public function getBrands(){
        $cars = new CarBrand();
        $cars = $cars->getBrands();

        return view('cars', ['cars' => $cars]);
    }
}
