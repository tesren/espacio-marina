<?php

namespace App\Livewire;

use Livewire\Component;

class PrivacyPage extends Component
{
    public function render()
    {
        return view('livewire.pages.privacy-page')->layout('layouts.public-base');
    }
}
