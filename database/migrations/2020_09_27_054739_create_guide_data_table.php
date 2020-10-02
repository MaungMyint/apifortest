<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateGuideDataTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('guide_data', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->bigInteger('user_id')->unsigned()->nullable();
            $table->string('bloggerimage')->nullable();
            $table->string('bloggername')->nullable();
            $table->string('bloggeraddress')->nullable();
            $table->string('bloggeraddresscity')->nullable();
            $table->string('bloggerphone')->nullable();
            $table->string('descrition')->nullable();
            $table->string('bloggeremail')->nullable();
            $table->string('myanmarlanguage')->default('no');
            $table->string('englishlanguage')->default('no');
            $table->string('chinselanguage')->default('no');
            $table->string('janpanselanguage')->default('no');
            $table->integer('point')->default(10);

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
        Schema::dropIfExists('guide_data');
    }
}
