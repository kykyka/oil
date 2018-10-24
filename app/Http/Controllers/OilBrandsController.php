<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\CarBrand;
use App\CarModel;
use App\OilBrands;
use App\Oil;
use App\TransmissionOil;

class OilBrandsController extends Controller
{
    public function getBrands(){
        $oilBrands = new OilBrands();
        $oilBrands = $oilBrands->getBrands();

        return view('oilBrands', ['brands' => $oilBrands]);
    }

    public function getOils($id){
    	$engine = new Oil();
    	$engine = $engine->getOils($id);
    	$transmission = new TransmissionOil();
    	$transmission = $transmission->getOils($id);
            // dd($transmission);
    	return view('oils', ['engine'		=> $engine,
    						 'transmission' => $transmission]);
    }
}
