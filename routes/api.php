<?php

use App\Http\Controllers\API\AuthController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\API\BusinessController;
use App\Http\Controllers\API\Business2Controller;
use App\Http\Controllers\API\ClientController;
use App\Http\Controllers\API\FavoriteController;
use App\Http\Controllers\API\RegionController;
use Illuminate\Support\Facades\Mail;
use App\Mail\ContactUs;

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
Route::get('region', [RegionController::class, 'index']);

Route::get('business', [BusinessController::class, 'index']);

Route::get('business/{business}', [BusinessController::class, 'show']);

Route::get('business-names', [BusinessController::class, 'showBusinessNames']);

Route::get('business2-names/{business}', [BusinessController::class, 'showBusiness2Names']);

Route::get('business2/{business2}', [Business2Controller::class, 'show']);

Route::get('client/{client}', [ClientController::class, 'show']);

Route::middleware('auth:sanctum')->get('client-home', [ClientController::class, 'getProfile']);

Route::middleware('auth:sanctum')->post('client-home', [ClientController::class, 'updateProfile']);

Route::get('fast-search', [ClientController::class, 'fastSearch']);

Route::get('custom-search', [ClientController::class, 'customSearch']);

Route::post('favorite', [FavoriteController::class, 'store']);

Route::post('register', [AuthController::class, 'register']);

Route::post('login', [AuthController::class, 'login']);

Route::middleware('auth:sanctum')->get('logout', [AuthController::class, 'logout']);

Route::post('contact-us', function (Request $request){
    
    $contactInfo = $request->only(['client_name', 'client_email', 'client_tel']);
    
    Mail::to('admin@gmail.com')->send(new ContactUs($contactInfo));
    
    return response()->json(['message' => 'success']);
});
