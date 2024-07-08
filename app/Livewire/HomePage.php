<?php

namespace App\Livewire;

use Livewire\Component;
use App\Models\UnitType;

class HomePage extends Component
{
    public function render()
    {
        $unit_types = UnitType::all();
        
        return view('livewire.pages.home-page', compact('unit_types'))->layout('layouts.public-base');
    }
}
