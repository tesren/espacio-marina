<?php

namespace App\Livewire;

use App\Models\Unit;
use Livewire\Component;

class AdminInventory extends Component
{
    public function render()
    {
        $oceanview_units = Unit::whereIn('section_id', [1,4])->get();

        $golfview_units = Unit::whereIn('section_id', [2,3])->get();

        return view('livewire.pages.admin.admin-inventory', compact('oceanview_units', 'golfview_units'))->layout('layouts.admin-base');
    }
}
