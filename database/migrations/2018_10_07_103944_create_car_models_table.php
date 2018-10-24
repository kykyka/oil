<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateCarModelsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('car_models', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name')->unique();
            $table->float('engine', 3)->nullable();
            $table->string('SAE')->nullable();
            $table->string('ACEA')->nullable();
            $table->string('API')->nullable();
            $table->string('ZF')->nullable();
            $table->string('JASO')->nullable();
            $table->string('ILSAC')->nullable();
            $table->string('brand_certificate')->nullable();
            $table->integer('car_brand_id');
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
        Schema::dropIfExists('car_models');
    }
}
