<?php

namespace App\Livewire;

use Livewire\Component;

class AdminProfile extends Component
{
    public function render()
    {
        return view('livewire.pages.admin.admin-profile')->layout('layouts.admin-base');
    }
}
