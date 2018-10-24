<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Certificate extends Model
{
    public function engineOil(){
        return $this->belongTo('App\Oil');
    }

    public function transmissionOil(){
        return $this->belongTo('App\TransmissionOil');
    }
}
