<?php

namespace App\Livewire;

use App\Models\Unit;
use Livewire\Component;

class AdminFavorites extends Component
{
    public function removeUnit($unitID){

        $unit = Unit::findOrFail( $unitID );
        $unit->users()->detach( auth()->user()->id );
        $unit->save();

    }
    
    public function render()
    {
        $units = auth()->user()->savedUnits;

        return view('livewire.pages.admin.admin-favorites', compact('units'))->layout('layouts.admin-base');
    }
}
