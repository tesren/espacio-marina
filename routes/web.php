<?php

use App\Livewire\HomePage;
use App\Livewire\UnitPage;
use App\Livewire\AdminHome;
use App\Livewire\AdminUnit;
use App\Livewire\SearchPage;
use App\Livewire\AdminSearch;
use App\Livewire\ContactPage;
use App\Livewire\PrivacyPage;
use App\Livewire\AdminProfile;
use App\Livewire\GolfViewPage;
use App\Livewire\AdminGolfView;
use App\Livewire\OceanViewPage;
use App\Livewire\AdminFavorites;
use App\Livewire\AdminInventory;
use App\Livewire\AdminOceanView;
use App\Livewire\ConstructionPage;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AdminPagesController;
use Illuminate\Support\Facades\Lang;

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

/* Admin routes */
Route::redirect('/dashboard', '/dashboard/home', 301);
Route::get('/dashboard/home', AdminHome::class)->middleware(['auth'])->name('dashboard.home');
Route::redirect('/dashboard/inventory', '/dashboard/inventory/ocean-view', 302);
Route::get('/dashboard/inventory/ocean-view', AdminOceanView::class)->middleware(['auth'])->name('dashboard.oceanview');
Route::get('/dashboard/inventory/golf-view', AdminGolfView::class)->middleware(['auth'])->name('dashboard.golfview');
Route::get('/dashboard/search', AdminSearch::class)->middleware(['auth'])->name('dashboard.search');
Route::get('/dashboard/favorites', AdminFavorites::class)->middleware(['auth'])->name('dashboard.favorites');
Route::get('/dashboard/profile', AdminProfile::class)->middleware(['auth'])->name('dashboard.profile');
Route::get('/dashboard/condominium/{name}', AdminUnit::class)->middleware(['auth'])->name('dashboard.unit');
Route::post('/logout', [AdminPagesController::class, 'destroy'])->middleware('auth')->name('logout');


/* Public routes */
Route::localized(function () {

    Route::get('/', HomePage::class)->name('pages.home');
    Route::get(Lang::uri('/condominios-con-vista-al-mar'), OceanViewPage::class)->name('pages.ocean');
    Route::get(Lang::uri('/condominios-con-vista-al-golf'), GolfViewPage::class)->name('pages.golf');
    Route::get(Lang::uri('/condominio-en-preventa').'/{name}', UnitPage::class)->name('pages.unit');
    Route::get(Lang::uri('/buscar-condominios'), SearchPage::class)->name('pages.search');
    Route::get(Lang::uri('/contacto'), ContactPage::class)->name('pages.contact');
    Route::get(Lang::uri('/avances-de-obra'), ConstructionPage::class)->name('pages.construction');
    Route::get(Lang::uri('/aviso-de-privacidad'), PrivacyPage::class)->name('pages.privacy');

    Livewire::setUpdateRoute(function ($handle) {
        return Route::post('/livewire/update', $handle);
    });

});

Route::get('/espacio-optimize', function() {
    Artisan::call('optimize');
    return ('Optimizado');
});

require __DIR__.'/auth.php';