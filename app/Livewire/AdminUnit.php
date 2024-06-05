<?php

namespace App\Livewire;

use App\Models\Unit;
use Livewire\Component;

class AdminUnit extends Component
{
    public Unit $unit;

    public function saveUnit($unitID){

        $unit = Unit::findOrFail( $unitID );
        $unit->users()->attach( auth()->user()->id );
        $unit->save();

    }

    public function removeUnit($unitID){

        $unit = Unit::findOrFail( $unitID );
        $unit->users()->detach( auth()->user()->id );
        $unit->save();

    }

    public function mount($name)
    {
        $this->reset();
        $this->unit = Unit::where('name', $name)->firstOrFail();
        //$this->dispatch('nombre-unidad', name:$name);
    }
    
    public function render()
    {
        return view('livewire.pages.admin.admin-unit')->layout('layouts.admin-base');
    }
}
