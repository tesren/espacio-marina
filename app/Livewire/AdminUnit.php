<?php

namespace App\Livewire;

use App\Models\Unit;
use Livewire\Component;
use Illuminate\Support\Facades\App;
use Livewire\Attributes\On; 

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
        $lang = auth()->user()->lang;
        App::setLocale($lang);

        return view('livewire.pages.admin.admin-unit')->layout('layouts.admin-base');
    }

    #[On('change-lang')] 
    public function updatePostList($lang)
    {
        App::setLocale(auth()->user()->lang);
    }
}
