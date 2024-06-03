<?php

use App\Livewire\AdminHome;
use App\Livewire\AdminInventory;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AdminPagesController;

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

Route::redirect('/dashboard', '/dashboard/home', 301);
Route::redirect('/', '/login', 302);

Route::get('/dashboard/home', AdminHome::class)->middleware(['auth'])->name('dashboard.home');
Route::get('/dashboard/inventory', AdminInventory::class)->middleware(['auth'])->name('dashboard.inventory');

Route::post('/logout', [AdminPagesController::class, 'destroy'])->middleware('auth')->name('logout');


require __DIR__.'/auth.php';