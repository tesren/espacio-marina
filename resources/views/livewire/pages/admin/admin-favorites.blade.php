<div>
    {{-- Be like water. --}}

    @section('titles')
        <title>{{__('Mis Favoritos')}} - Espacio Marina & Golf</title>
    @endsection

    <div class="container mb-6 mt-5" style="min-height: 87vh;">

        @if ($units->isNotEmpty())

            <h1>{{__('Unidades Guardadas')}}</h1>
            <p>{{__('Haga clic en las tarjetas para ver más información sobre la unidad.')}}</p>

            @foreach ($units as $unit)

                @php
                    $blueprint = $unit->unitType->getMedia('blueprints');

                    if($unit->status == 'Disponible'){
                        $badgeBg = 'bg-success';
                    }elseif($unit->status == 'Apartada'){
                        $badgeBg = 'bg-warning';
                    }
                    else{
                        $badgeBg = 'bg-danger';
                    }
                @endphp
                <div class="card mb-3 shadow-5 rounded-3">
                    <div class="row g-0">

                        <div class="col-lg-4 align-self-center">
                            <img src="{{ $blueprint[0]->getUrl('medium') }}" class="w-100 rounded-3 p-3" alt="Planos de la unidad {{$unit->name}} de Tridenta Towers">
                        </div>

                        <div class="col-lg-8">
                            <div class="card-body text-darkblue">

                                <div class="position-absolute top-0 end-0 m-3 d-flex justify-content-start justify-content-lg-end">
                                    <div class="badge {{$badgeBg}} rounded-pill mb-2 fs-5 fw-light align-self-center">
                                        {{$unit->status}}
                                    </div>
                        
                                    <div class="">
                                        <button wire:click="removeUnit({{$unit->id}})" class="btn btn-link link-danger fs-4" title="{{__('Quitar de Favoritos')}}">
                                            <i class="fa-solid fa-heart"></i>
                                        </button>
                                    </div>
                                </div>

                                <h2 class="card-title">{{__('Unidad')}} {{$unit->name}}</h2>

                                <div class="fs-1">
                                    @if ($unit->price != 0 and $unit->status == 'Disponible')
                                        ${{ number_format($unit->price) }} {{$unit->currency}}       
                                    @endif
                                </div>

                                <div class="fs-4 fw-light text-secondary mb-4">{{__('Tipo')}} {{$unit->unitType->name}}</div>
                                <div class="d-flex justify-content-center justify-content-lg-start mb-4 fs-5">

                                    <div>
                                        <i class="fa-solid fa-bed"></i> {{$unit->unitType->bedrooms}} <span class="d-none d-lg-inline fw-light">{{__('Recámaras')}}</span>
                                    </div>
                    
                                    <div class="mx-3">
                                        <i class="fa-solid fa-bath"></i> {{$unit->unitType->bathrooms}} <span class="d-none d-lg-inline fw-light">{{__('Baños')}}</span>
                                    </div>
                    
                                    <div>
                                        <i class="fa-solid fa-house-chimney"></i> {{__('Total')}}: {{$unit->const_total}} {{__('m²')}}
                                    </div>
                    
                                </div>

                                <a href="{{ route('dashboard.unit', ['name' => $unit->name ]) }}" class="btn btn-blue col-12 col-lg-4" wire:navigate>
                                    {{__('Ver más')}}
                                </a>

                            </div>
                        </div>
                    </div>
                </div>
                
            @endforeach

            <div class="text-center my-5">
                <a href="{{route('dashboard.inventory')}}" class="btn btn-blue" wire:navigate>
                    {{__('Ver todo el inventario')}}
                </a>    
            </div>

        @else

            <h1>{{__('Aún no tienes unidades guardadas')}}</h1>
            <p>{{__('Visita nuestro inventario para ver todas las unidades')}}</p>
            <a href="{{route('dashboard.inventory')}}" class="btn btn-blue" wire:navigate>
                {{__('Ver Inventario')}}
            </a>

        @endif
        
    </div>

</div>
