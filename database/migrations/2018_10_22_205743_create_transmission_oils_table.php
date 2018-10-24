<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTransmissionOilsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('transmission_oils', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name');
            $table->integer('brand_id');
            $table->integer('certificate_id')->nullable();
            $table->integer('tds_id')->nullable();
            $table->integer('price');
            $table->float('size', 3);
            $table->string('ZF')->nullable();
            $table->string('Allison')->nullable();
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
        Schema::dropIfExists('transmission_oils');
    }
}
