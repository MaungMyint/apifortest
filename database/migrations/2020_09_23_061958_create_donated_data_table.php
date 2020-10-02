<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateDonatedDataTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('donated_data', function (Blueprint $table) {
            $table->increments('id');
            $table->bigInteger('user_id')->unsigned()->nullable();
            $table->string('accountimage')->nullable();
            $table->string('accountname')->nullable();
            $table->string('memberphone')->nullable();
            $table->string('membername')->nullable();
            $table->string('foundationlogo')->nullable();
            $table->string('foundationname')->nullable();
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
        Schema::dropIfExists('donated_data');
    }
}
