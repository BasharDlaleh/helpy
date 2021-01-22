<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\API\BusinessController;
use App\Http\Controllers\API\Business2Controller;
use App\Http\Controllers\API\ClientController;
use App\Http\Controllers\API\FavoriteController;

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

Route::get('/business', [BusinessController::class, 'index']);

Route::get('/business/{business}', [BusinessController::class, 'show']);

Route::get('/business2/{business2}', [Business2Controller::class, 'show']);

Route::get('/client/{client}', [ClientController::class, 'show']);

Route::get('/fast-search', [ClientController::class, 'fastSearch']);

Route::get('/custom-search', [ClientController::class, 'customSearch']);

Route::post('/favorite', [FavoriteController::class, 'store']);