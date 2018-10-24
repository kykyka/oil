<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateOilsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('oils', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name');
            $table->integer('brand_id');
            $table->integer('certificate_id')->nullable();
            $table->integer('tds_id')->nullable();
            $table->integer('price');
            $table->float('size', 3);
            $table->string('SAE')->nullable();
            $table->string('ACEA')->nullable();
            $table->string('API')->nullable();
            $table->string('JASO')->nullable();
            $table->string('ZF')->nullable();
            $table->string('ILSAC')->nullable();
            $table->string('BMW')->nullable();
            $table->string('Chrysler')->nullable();
            $table->string('Fiat')->nullable();
            $table->string('Ford')->nullable();
            $table->string('General_Motors')->nullable();
            $table->string('Jaguar')->nullable();
            $table->string('Land_Rover')->nullable();
            $table->string('Mercedes')->nullable();
            $table->string('Opel')->nullable();
            $table->string('Peugeot_Citroen')->nullable();
            $table->string('Porsche')->nullable();
            $table->string('Renault')->nullable();
            $table->string('Volvo')->nullable();
            $table->string('VW')->nullable();
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
        Schema::dropIfExists('oils');
    }
}
