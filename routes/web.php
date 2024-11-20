<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthController;

Route::get('/', function () {
    return view('blog.index');
});
Route::get('/login', [AuthController::class, 'index'])->name
('login')->middleware('guest');
