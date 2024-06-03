<?php

namespace App\Livewire;

use Livewire\Component;
use App\Livewire\Actions\Logout;

class SideBar extends Component
{
    public function render()
    {
        return view('livewire.components.side-bar');
    }

    /**
     * Log the current user out of the application.
     */
    public function logout(Logout $logout): void
    {
        $logout();

        $this->redirect('/login', navigate: true);
    }

}
