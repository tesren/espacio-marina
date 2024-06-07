<?php

use App\Livewire\AdminHome;
use App\Livewire\AdminUnit;
use App\Livewire\AdminSearch;
use App\Livewire\AdminProfile;
use App\Livewire\AdminGolfView;
use App\Livewire\AdminFavorites;
use App\Livewire\AdminInventory;
use App\Livewire\AdminOceanView;
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
Route::redirect('/dashboard/inventory', '/dashboard/inventory/ocean-view', 302);
Route::get('/dashboard/inventory/ocean-view', AdminOceanView::class)->middleware(['auth'])->name('dashboard.oceanview');
Route::get('/dashboard/inventory/golf-view', AdminGolfView::class)->middleware(['auth'])->name('dashboard.golfview');
Route::get('/dashboard/search', AdminSearch::class)->middleware(['auth'])->name('dashboard.search');
Route::get('/dashboard/favorites', AdminFavorites::class)->middleware(['auth'])->name('dashboard.favorites');
Route::get('/dashboard/profile', AdminProfile::class)->middleware(['auth'])->name('dashboard.profile');
Route::get('/dashboard/condominium/{name}', AdminUnit::class)->middleware(['auth'])->name('dashboard.unit');


Route::post('/logout', [AdminPagesController::class, 'destroy'])->middleware('auth')->name('logout');

Route::get('/espacio-optimize', function() {
    Artisan::call('optimize');
    return ('Optimizado');
});

require __DIR__.'/auth.php';