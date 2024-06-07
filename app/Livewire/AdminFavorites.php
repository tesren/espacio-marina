<?php

namespace App\Livewire;

use App\Models\Unit;
use Livewire\Component;
use Illuminate\Support\Facades\App;

class AdminFavorites extends Component
{
    public function removeUnit($unitID){

        $unit = Unit::findOrFail( $unitID );
        $unit->users()->detach( auth()->user()->id );
        $unit->save();

    }
    
    public function render()
    {
        $lang = auth()->user()->lang;
        App::setLocale($lang);

        $units = auth()->user()->savedUnits;

        return view('livewire.pages.admin.admin-favorites', compact('units'))->layout('layouts.admin-base');
    }
}
