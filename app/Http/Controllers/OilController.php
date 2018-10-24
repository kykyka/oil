<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\CarBrand;
use App\CarModel;
use App\OilBrands;
use App\Oil;
use App\TransmissionOil;

class OilController extends Controller
{
    public function getOils($id){
    	$engine = new Oil();
    	$engine = $engine->getOils($id);
            
    	$transmission = new TransmissionOil();
    	$transmission = $transmission->getOils($id);

    	return view('oils', ['engine'		=> $engine,
    						 'transmission' => $transmission]);
    }
}
