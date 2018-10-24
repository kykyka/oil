<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class BrandCertificate extends Model
{
     public function carBrand()
    {
        return $this->belongTo('App\CarBrand');
    }
}
