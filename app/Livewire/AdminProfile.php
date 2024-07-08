<?php

namespace App\Livewire;

use App\Models\User;
use Livewire\Component;
use Illuminate\Support\Facades\App;
use Livewire\Attributes\On; 

class AdminProfile extends Component
{

    public $user_name = '';
    public $user_phone = '';

    public function mount(){
        $this->user_name = auth()->user()->name;
        $this->user_phone = auth()->user()->phone;
    }

    public function updateProfile(){

        $user = User::findOrFail( auth()->user()->id );
        $user->name = $this->user_name;
        $user->phone = $this->user_phone;
        $user->save();

        session()->flash('message', 'Cambios Guardados');
    }

    public function render()
    {
        $lang = auth()->user()->lang;
        App::setLocale($lang);

        return view('livewire.pages.admin.admin-profile')->layout('layouts.admin-base');
    }

    #[On('change-lang')] 
    public function updatePostList($lang)
    {
        App::setLocale(auth()->user()->lang);
    }
}
