<?php

namespace App\Livewire;

use Livewire\Component;
use Livewire\Attributes\On;

class NavBar extends Component
{

    public $unit_name = 'A811';

    #[On('nombre-unidad')] 
    public function updateUnit($name)
    {
        $this->unit_name = $name;
    }

    public function render()
    {
        return view('livewire.components.nav-bar');
    }
}
