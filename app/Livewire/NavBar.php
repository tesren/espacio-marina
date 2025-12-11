<?php

namespace App\Livewire;

use Livewire\Component;
use Livewire\Attributes\On;
use Illuminate\Support\Facades\Route;

class NavBar extends Component
{

    public $unit_name = 'A811';
    public $route = '';


    #[On('nombre-unidad')] 
    public function updateUnit($name)
    {
        $this->unit_name = $name;
    }

    public function mount(){
        $this->route = request()->route()->getName();
    }

    public function render()
    {
        $lang = app()->getLocale();

        return view('livewire.components.nav-bar', compact('lang'));
    }
}
