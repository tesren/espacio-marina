<?php

namespace App\Livewire;

use App\Models\User;
use Livewire\Component;
use Livewire\WithPagination;
use App\Livewire\Actions\Logout;
use Illuminate\Support\Facades\App;

class SideBar extends Component
{
    use WithPagination;

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

    public function setEnglish(){
        App::setLocale('en');

        $user = User::find( auth()->user()->id );
        $user->lang = 'en';
        $user->save();

        $this->dispatch('change-lang', lang:'en');
    }

    public function setSpanish(){

        App::setLocale('es');

        $user = User::find( auth()->user()->id );
        $user->lang = 'es';
        $user->save();

        $this->dispatch('change-lang', lang:'es');
    }

}
