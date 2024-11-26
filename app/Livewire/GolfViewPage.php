<?php

namespace App\Livewire;

use App\Models\Unit;
use Livewire\Component;

class GolfViewPage extends Component
{
    public $search_status = 0;
    public $floor = 0;
    public $bedrooms = 0;
    public $tower = 0;
    public $min_price = 1;
    public $max_price = 9999999999;
    public $golfview_units;


    public function mount(){

        $this->golfview_units = Unit::whereIn('section_id', [2,3])->get();

    }

    public function search(){
        

        $units = Unit::where('price', '>' ,$this->min_price)->where('price','<', $this->max_price)->where('status', '!=', 'Vendida')->whereIn('section_id', [2,3] );

        if( $this->floor != 0 ){
            $units = $units->where('floor', $this->floor);
        }

        if($this->tower != 0){
            if ($this->tower == 'A') {
                $units = $units->where('section_id', 2 );
            } else {
                $units = $units->where('section_id', 3 );
            }            
        }


        if( $this->bedrooms != 0 ){

            $bedrooms = $this->bedrooms;

            switch($bedrooms){

                case 1:
                    $units = $units->whereIn('unit_type_id', [1,2,5,6,16,17,18,19,20,21,22,23,24,25]);
                break;

                case 2:
                    $units = $units->where(function($query) {
                        $query->where('unit_type_id', 9)->orWhere('lockoff_id', '!=', 0);
                    });                
                break;

                case 3:
                    $units = $units->whereIn('unit_type_id', [7,8,10] );
                break;

                case 10:
                    $units = $units->whereIn('unit_type_id', [3,4,11,12,13,14,15] );
                break;

            }
            
        }


        $this->golfview_units = $units->get();

        $this->dispatch('close-modal'); 
    }

    public function render()
    {
        return view('livewire.pages.golf-view-page')->layout('layouts.public-base');
    }
}
