<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\AngkotController;

Route::get('/', function () {
    return view('layouts.landing');
});

Route::controller(AuthController::class)->group(function () {
    Route::get('register', 'register')->name('register');
    Route::post('register', 'registerSave')->name('register.save');

    Route::get('login', 'login')->name('login');
    Route::post('login', 'loginAction')->name('login.action');

    Route::get('logout', 'logout')->middleware('auth')->name('logout');
});

Route::middleware('auth')->group(function () {
    Route::get('/profile', [AuthController::class, 'profile'])->name('profile');

    Route::controller(AngkotController::class)->prefix('angkots')->group(function () {
        Route::get('', 'index')->name('angkots');
        Route::get('create', 'create')->name('angkots.create');
        Route::post('store', 'store')->name('angkots.store');
        Route::get('edit/{id}', 'edit')->name('angkots.edit');
        Route::put('edit/{id}', 'update')->name('angkots.update');
        Route::delete('destroy/{id}', 'destroy')->name('angkots.destroy');
    });
    // Route::get('/angkot/cari', [AngkotController::class, 'cariAngkot'])->name('angkot.cari');
    // Route::post('/angkots/search', [AngkotController::class, 'search'])->name('angkots.search');
    // Route::post('/angkots/search', [AngkotController::class, 'search'])->name('angkots.search');

    // Route::post('/cari-angkot', [AngkotController::class, 'cari'])->name('angkot.cari');

});
Route::get('/angkot/cari', [AngkotController::class, 'cariAngkot'])->name('angkot.cari');
Route::get('/angkot/{rute_jalan}/{jam}', [AngkotController::class, 'show']);

