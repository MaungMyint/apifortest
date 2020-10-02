<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreatePlacesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('places', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->bigInteger('user_id')->unsigned()->nullable();
            $table->string('placeimage')->nullable();
            $table->string('placeimageone')->nullable();
            $table->string('placeimagetwo')->nullable();
            $table->string('placeimagethree')->nullable();
            $table->string('placename')->nullable();
            $table->string('placeaddress')->nullable();
            $table->string('placecity')->nullable();
            $table->string('nearby')->nullable();
            $table->double('latitude')->nullable();
            $table->double('longitude')->nullable();
            $table->longText('descrition')->nullable();
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
        Schema::dropIfExists('places');
    }
}
