<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateKementerianTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('kementerian', function (Blueprint $table) {
            $table->increments("id");
            $table->string('name');
            $table->text('description')->nullable();
            $table->date('date_establishment')->nullable(); // dibentuk
            $table->string('legal_basis_establishment')->nullable(); // Dasar hukum pendirian
            $table->string('sector')->nullable();
            $table->integer('employee')->nullable();
            $table->text('address')->nullable();
            $table->string('website')->nullable();
            $table->text('image')->nullable();
            $table->boolean('status')->default(true);
            $table->timestamps();
            $table->softDeletes();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('kementerian');
    }
}
