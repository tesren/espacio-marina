<?php

namespace App\Livewire;

use App\Models\Unit;
use Livewire\Component;
use Livewire\WithPagination;

class SearchPage extends Component
{
    use WithPagination;
    
    public $search_status = 0;
    public $floor = 0;
    public $bedrooms = 0;
    public $tower = 0;
    public $view = 0;
    public $min_price = 1;
    public $max_price = 9999999999;

    public function search(){
        $this->resetPage();
    }

    public function render()
    {
        $units = Unit::where('price', '>' ,$this->min_price)->where('price','<', $this->max_price)->where('status', '!=', 'Vendida');

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

        if($this->view != 0){
            if ($this->view == 'Mar') {
                $units = $units->whereIn('section_id', [1,4] );
            } else {
                $units = $units->whereIn('section_id', [3,2] );
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
                    $units = $units->whereIn('unit_type_id', [3,4,11,12,13,14,15] )->where('lockoff_type', 0);
                break;

            }
            
        }

        $units = $units->orderBy('status', 'desc')->paginate(12);

        return view('livewire.pages.search-page', compact('units'))->layout('layouts.public-base');
    }
}
