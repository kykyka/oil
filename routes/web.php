<?php

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

Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});

Route::get('/home', 'HomeController@index')->name('home');
Route::get('/cars', 'CarBrandController@getBrands')->name('cars');
Route::get('/models/{id}', 'CarModelController@getModels')->name('models');
Route::get('/model/{id}', 'CarModelController@getModel')->name('model');
Route::get('/brands', 'OilBrandsController@getBrands')->name('oilBrands');
Route::get('/oils/brand/{id}', 'OilBrandsController@getOils')->name('oils');


Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});
