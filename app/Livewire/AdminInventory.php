<?php

namespace App\Livewire;

use App\Models\Unit;
use Livewire\Component;
use Livewire\WithPagination;
use Illuminate\Support\Facades\App;


class AdminInventory extends Component
{
    use WithPagination;

    public $search_status = 0;
    public $floor = 0;
    public $bedrooms = 0;
    public $tower = 0;
    public $min_price = 1;
    public $max_price = 9999999999;
    public $oceanview_units;
    public $golfview_units;


    public function mount(){
        $this->oceanview_units = Unit::whereIn('section_id', [1,4])->get();

        $this->golfview_units = Unit::whereIn('section_id', [2,3])->get();

    }

    public function search(){

        $units = Unit::where('price', '>' ,$this->min_price)->where('price','<', $this->max_price);

        if( $this->floor != 0 ){
            $units = $units->where('floor', $this->floor);
        }

        if($this->tower != 0){
            if ($this->tower == 'A') {
                $units = $units->whereIn('section_id', [1,2] );
            } else {
                $units = $units->whereIn('section_id', [3,4] );
            }            
        }


        if( $this->bedrooms != 0 ){

            $bedrooms = $this->bedrooms;

            switch($bedrooms){

                case 1:
                    $units = $units->whereIn('unit_type_id', [1,2,5,6,16,17,18,19,20,21,22,23,24,25]);
                break;

                case 2:
                    $units = $units->where('unit_type_id', 9 );
                break;

                case 3:
                    $units = $units->whereIn('unit_type_id', [7,8,10] );
                break;

                case 10:
                    $units = $units->whereIn('unit_type_id', [3,4,11,12,13,14,15] );
                break;

            }
            
        }

        $units_copy = $units;

        $this->oceanview_units = $units->whereIn('section_id', [1,4])->get();

        $this->golfview_units = $units_copy->whereIn('section_id', [2,3])->get();

        //$this->resetPage();
    }

    public function render()
    {
        $lang = auth()->user()->lang;
        App::setLocale($lang);

        return view('livewire.pages.admin.admin-inventory' )->layout('layouts.admin-base');
    }
}
