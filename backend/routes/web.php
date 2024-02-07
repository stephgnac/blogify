<?php

use App\Http\Controllers\Auth\AuthenticatedSessionController;
use App\Http\Controllers\Auth\RegisteredUserController;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\PostController;
    use App\Http\Controllers\ProfileController;
    use Illuminate\Support\Facades\Route;

    /*
    |--------------------------------------------------------------------------
    | Web Routes
    |--------------------------------------------------------------------------
    |
    | Here is where you can register web routes for your application. These
    | routes are loaded by the RouteServiceProvider and all of them will
    | be assigned to the "web" middleware group. Make something great!
    |
    */

    Route::get('/', function () {
        return view('welcome');
    });

    Route::get('/dashboard', function () {
        return view('dashboard');
    })->middleware(['auth', 'verified'])->name('dashboard');

    Route::middleware('auth')->group(function () {

        Route::get('post.create', [PostController::class, 'create'])->name('post.create');

        Route::post('/post', [PostController::class, 'store'])->name('post.store');

        // Route::get('/post/{article}/edit', 'PostController@edit')->name('post.edit');
        // Route::put('/post/{article}', 'PostController@update')->name('post.update');
    });

    Route::post('/register', [RegisteredUserController::class, 'store']);
    Route::post('/login', [AuthenticatedSessionController::class, 'store']);

    // Route::post('/login', [AuthController::class, 'login']);



    // Route::group(['middleware' => ['auth:sanctum']],function () {

    //     Route::post('/logout', [AuthController::class, 'logout']);


    // });









































    Route::middleware('auth')->group(function () {

        Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');

        Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');

        Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
    });

    require __DIR__.'/auth.php';
