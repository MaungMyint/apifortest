<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTaxiDataTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('taxi_data', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->bigInteger('user_id')->unsigned()->nullable();
            $table->string('carimage')->nullable();
            $table->string('driverimage')->nullable();
            $table->string('driverenglishname')->nullable();
            $table->string('drivermyanmarname')->nullable();
            $table->string('driverphone')->nullable();
            $table->string('driveraddress')->nullable();
            $table->string('driveraddresscity')->nullable();
            $table->string('descrition')->nullable();
            $table->string('cartype')->nullable();
            $table->string('carintnumber')->nullable();
            $table->string('carcharacter')->nullable();
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
        Schema::dropIfExists('taxi_data');
    }
}
