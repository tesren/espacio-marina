<?php

namespace App\Livewire;

use Livewire\Component;

class AdminInventory extends Component
{
    public function render()
    {
        return view('livewire.pages.admin.admin-inventory')->layout('layouts.admin-base');
    }
}
