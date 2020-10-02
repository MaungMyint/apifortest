<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateRestaurantDataTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('restaurant_data', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->bigInteger('user_id')->unsigned()->nullable();
            $table->string('restaurantimage')->nullable();
            $table->string('myanmarname')->nullable();
            $table->string('englishname')->nullable();
            $table->string('restauranttype')->nullable();
            $table->string('restaurantphone')->nullable();
            $table->string('opentime')->nullable();
            $table->string('closetime')->nullable();
            $table->string('closeweekday')->nullable();
            $table->string('address')->nullable();
            $table->string('addresscity')->nullable();
            $table->string('descrition')->nullable();
            $table->string('myanmarfoods')->default('no');
            $table->string('khayafoods')->default('no');
            $table->string('chinsefoods')->default('no');
            $table->string('shanfoods')->default('no');
            $table->string('thailandfoods')->default('no');
            $table->string('foreignfoods')->default('no');
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
        Schema::dropIfExists('restaurant_data');
    }
}
