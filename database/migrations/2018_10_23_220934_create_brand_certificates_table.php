<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateBrandCertificatesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('brand_certificates', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name');
            $table->integer('car_brand_id');
            $table->string('additional_certificate_1')->nullable();
            $table->string('additional_certificate_2')->nullable();
            $table->string('additional_certificate_3')->nullable();
            $table->string('additional_certificate_4')->nullable();
            $table->string('additional_certificate_5')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('brand_certificates');
    }
}
