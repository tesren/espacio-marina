<?php

namespace App\Livewire;

use Livewire\Component;
use App\Models\ConstructionUpdate;

class ConstructionPage extends Component
{
    public function render()
    {
        $const_updates = ConstructionUpdate::latest('date')->get();

        return view('livewire.pages.construction-page', compact('const_updates') )->layout('layouts.public-base');
    }
}
