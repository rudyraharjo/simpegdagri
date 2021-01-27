<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

Route::group(['middleware' => ['auth'], 'prefix' => 'pegawai'], function () {
    Route::get('/', [App\Http\Controllers\PegawaiController::class, 'index'])->name('home');
    Route::get('/{id}/edit', [App\Http\Controllers\PegawaiController::class, 'edit'])->name('edit');
    Route::post('/{id}/edit', [App\Http\Controllers\PegawaiController::class, 'update'])->name('update');
    Route::get('/{id}/delete', [App\Http\Controllers\PegawaiController::class, 'destroy'])->name('delete');
});

Route::group(['middleware' => ['auth'], 'prefix' => 'lembaga'], function () {
    Route::get('/', [App\Http\Controllers\LembagaController::class, 'index'])->name('home');
    Route::get('/{id}/edit', [App\Http\Controllers\LembagaController::class, 'edit'])->name('edit');
    Route::post('/{id}/edit', [App\Http\Controllers\LembagaController::class, 'update'])->name('update');
    Route::get('/{id}/delete', [App\Http\Controllers\LembagaController::class, 'destroy'])->name('delete');
});
