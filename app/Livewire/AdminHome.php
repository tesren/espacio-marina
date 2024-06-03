<?php

namespace App\Livewire;

use Livewire\Component;
use App\Models\UnitType;

class AdminHome extends Component
{
    public function render()
    {
        $unit_types = UnitType::all();

        return view('livewire.pages.admin.admin-home', compact('unit_types'))->layout('layouts.admin-base');
    }
}
