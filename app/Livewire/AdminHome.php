<?php

namespace App\Livewire;

use Livewire\Component;
use App\Models\UnitType;
use Illuminate\Support\Facades\App;

class AdminHome extends Component
{
    public function render()
    {
        $lang = auth()->user()->lang;
        App::setLocale($lang);

        $unit_types = UnitType::all();

        return view('livewire.pages.admin.admin-home', compact('unit_types'))->layout('layouts.admin-base');
    }
}
