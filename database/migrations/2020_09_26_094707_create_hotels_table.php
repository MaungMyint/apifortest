<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateHotelsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('hotels', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->bigInteger('user_id')->unsigned()->nullable();
            $table->string('hotelimage')->nullable();
            $table->string('hotelname')->nullable();
            $table->string('hotelmyanmarname')->nullable();
            $table->string('price')->nullable();
            $table->string('opentime')->nullable();
            $table->string('phone')->nullable();
            $table->string('ratings')->nullable();
            $table->integer('ratingsint')->nullable();
            $table->longText('descrition')->nullable();
            $table->string('parking')->default("yes");
            $table->string('status')->default("normal");
            $table->string('swimming')->default("yes");
            $table->string('wifi')->default("yes");
            $table->string('food')->default("yes");
            $table->string('galleryoneimage')->nullable();
            $table->string('gallerytwoimage')->nullable();
            $table->string('gallerythreeimage')->nullable();
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
        Schema::dropIfExists('hotels');
    }
}
