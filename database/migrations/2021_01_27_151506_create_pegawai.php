<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePegawai extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('pegawai', function (Blueprint $table) {
            $table->increments("id");
            $table->integer('user_id')->unsigned();
            $table->foreign('user_id')->references('id')->on('users');
            $table->integer('jabatan_id')->unsigned();
            $table->foreign('jabatan_id')->references('id')->on('jabatan');
            $table->integer('kementrian_id')->unsigned()->nullable();
            $table->foreign('kementrian_id')->references('id')->on('kementerian');
            $table->integer('unitkerja_id')->unsigned();
            $table->foreign('unitkerja_id')->references('id')->on('unit_kerja');
            $table->integer('lembaga_id')->unsigned()->nullable();
            $table->foreign('lembaga_id')->references('id')->on('lembaga');
            $table->string('nip')->unique();
            $table->string('fullname');
            $table->string('telp')->nullable();
            $table->text('address')->nullable();
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
        Schema::dropIfExists('pegawai');
    }
}
