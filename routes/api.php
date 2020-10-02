<?php

use App\Http\Controllers\PlaceController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});


Route::post('login1', 'PassportController@login');
Route::post('register1', 'PassportController@register');
Route::resource('donateds', 'DonatedDataController');
Route::resource('hotels', 'HotelController');
Route::resource('taxis', 'TaxiDataController');
Route::resource('bloggers', 'GuideDataController');
Route::resource('historydatas', 'HistoryDataController');
Route::resource('resaturants', 'RestaurantDataController');
Route::resource('places', 'PlaceController');


Route::resource('search', 'FilterController');
Route::post('check', 'FilterController@checkdata');


Route::middleware('auth:api')->group(function () {
    Route::get('user', 'PassportController@details');

    Route::resource('products', 'ProductController');
});
