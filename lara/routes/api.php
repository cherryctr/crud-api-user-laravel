<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\API\AuthController;

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

// Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
//     return $request->user();
// });

// Route::group(['middleware => auth:sanctum'],function () {
//     // return $request->user();
// });



Route::post('/register', [App\Http\Controllers\API\AuthController::class, 'register']);
Route::post('/login', [App\Http\Controllers\API\AuthController::class, 'login']);

Route::group(['middleware' => ['auth:sanctum']], function () {
    Route::get('/profile', function(Request $request) {
        return auth()->user();
    });

    // GET DATA USER BY BIRTH PLACE
    Route::get('/data-user', [App\Http\Controllers\API\UsersController::class, 'getDataUser']);

    // GET DATA ALL USER
    Route::get('/data-user-all', [App\Http\Controllers\API\UsersController::class, 'getDataUserAll']);

    // CRUD API

        // CREATE
        Route::post('/create', [App\Http\Controllers\API\UsersController::class, 'create']);

        // SHOW/READ
        Route::patch('/data/show/{id}', [App\Http\Controllers\API\UsersController::class, 'show']);

        // UPDATE
        Route::post('/data/update/{id}', [App\Http\Controllers\API\UsersController::class, 'update']);
        // DELETE
        Route::delete('/data/delete/{id}', [App\Http\Controllers\API\UsersController::class, 'destroy']);

        
    Route::post('/logout', [App\Http\Controllers\API\AuthController::class, 'logout']);
});
