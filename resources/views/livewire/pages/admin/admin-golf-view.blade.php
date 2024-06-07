<div>
    {{-- Because she competes with no one, no one can compete with her. --}}

    @section('titles')
        <title>{{__('Inventario Vista al Golf')}} - Espacio Marina</title>
    @endsection

    <div class="position-relative mb-5">
        <img src="{{ asset('img/fachada-atras-alberca.webp') }}" alt="Alberca Espacio Marina & Golf" class="w-100 object-fit-cover" style="height: 30vh;">

        <div class="fondo-oscuro"></div>

        <div class="row justify-content-center position-absolute start-0 top-0 h-100 z-3">

            <div class="col-12 text-center align-self-center">
                <h1 class="fs-0 text-white">{{__('Inventario')}}</h1>
            </div>

        </div>

    </div>

    <div class="container">
        <h2 class="fs-1">{{__('Elige la vista que más te guste')}}</h2>
        <p>{{__('Selecciona una de las vistas para ver unos de los condominios disponibles')}}</p>
    
        <div class="d-flex mb-1">
            <div class="me-3">
                <span class="px-2 py-1 bg-success text-success rounded-2">D</span> {{__('Disponible')}}
            </div>
    
            <div class="me-3">
                <span class="px-2 py-1 bg-warning text-warning rounded-2">A</span> {{__('Apartada')}}
            </div>
    
            <div>
                <span class="px-2 py-1 bg-danger text-danger rounded-2">V</span> {{__('Vendida')}}
            </div>
        </div>
    
        <div class="container input-group justify-content-end mb-3 text-end">
            <a href="{{route('dashboard.oceanview')}}" class="btn btn-outline-blue rounded-end-0 rounded-start-circle" wire:navigate><i class="fa-solid fa-border-all"></i></a>
            <a href="{{route('dashboard.search')}}" class="btn btn-outline-blue rounded-start-0 rounded-end-circle" wire:navigate><i class="fa-solid fa-list"></i></a>
        </div>

        {{-- Formulario de búsqueda --}}
        <div class="col-12 col-lg-11 me-auto mb-5">
            <form wire:submit="search">

                <div class="rounded-2 input-group shadow-4" id="search_input_group">
                            
                    <div class="form-floating mb-3 mb-lg-0">
    
                        <select class="form-select" id="floor" wire:model="floor" aria-label="{{__('Piso')}}">
                        <option value="0">{{__('Cualquier piso')}}</option>
    
                        @for ($i=1; $i<=9; $i++)
                            <option value="{{$i}}">{{$i}}</option>
                        @endfor
                        <option value="10">PH</option>
    
                        </select>
    
                        <label for="floor">{{__('Piso')}}</label>
                    </div>
    
                    <div class="form-floating mb-3 mb-lg-0">
                        <select class="form-select" id="bedrooms" wire:model="bedrooms" aria-label="{{__('Recámaras')}}">
                        <option value="0">{{__('Cualquier cantidad')}}</option>
                        <option value="10">{{__('Loft')}}</option>
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        </select>
                        <label for="bedrooms">{{__('Recámaras')}}</label>
                    </div>

                    <div class="form-floating mb-3 mb-lg-0">
                        <select class="form-select" id="tower" wire:model="tower" aria-label="{{__('Torre')}}">
                            <option value="0">{{__('Cualquier torre')}}</option>
                            <option value="A">{{__('Torre')}} A</option>
                            <option value="B">{{__('Torre')}} B</option>
                        </select>
                        <label for="tower">{{__('Torre')}}</label>
                    </div>
    
                    <div class="form-floating mb-3 mb-lg-0">
                        <select class="form-select" id="min_price" wire:model="min_price" aria-label="{{__('Precio min.')}}">
                            <option value="1">{{__('Sin mínimo')}}</option>
                            @php
                                $minPriceStart = 3000000;
                                $maxPrice = 15000000;
                            @endphp
                            @for($price = $minPriceStart; $price <= $maxPrice; $price += 1000000)
                                <option value="{{ $price }}">${{ number_format($price / 1000000) }}m</option>
                            @endfor
                        </select>
                        <label for="min_price">{{__('Precio min.')}}</label>
                    </div>
                    
                    <div class="form-floating mb-3 mb-lg-0">
                        <select class="form-select" id="max_price" wire:model="max_price" aria-label="{{__('Precio max.')}}">
                            <option value="9999999999">{{__('Sin máximo')}}</option>
                            @php
                                $maxPriceStart = 4000000;
                                $maxPrice = 16000000;
                            @endphp
                            @for($price = $maxPriceStart; $price <= $maxPrice; $price += 1000000)
                                <option  value="{{ $price }}">${{ number_format($price / 1000000) }}m</option>
                            @endfor
                        </select>
                        <label for="max_price">{{__('Precio max.')}}</label>
                    </div>
                    
    
                    <button type="submit" class="btn btn-blue rounded-end-2 col-12 col-lg-1" aria-label="{{__('Buscar')}}">
                        <i class="fa-solid fa-magnifying-glass" wire:loading.remove></i>
                        <i class="fa-solid fa-spin fa-circle-notch" wire:loading></i>
                    </button>
                </div>
            </form>
        </div>
        

        {{-- Inventario --}}
        <div class="row">

            <div class="col-12 col-lg-11 px-0 order-2 order-lg-1">
                    
                {{-- Vista al Golf --}}
                
                <div class="position-relative p-0">
                    <img src="{{asset('img/fachada-vista-golf.webp')}}" alt="Inventario disponible de Espacio Marina" class="w-100 shadow-5">
    
                    <svg xmlns="http://www.w3.org/2000/svg" version="1.1" xmlns:xlink="http://www.w3.org/1999/xlink" class="position-absolute start-0 top-0 px-0" viewBox="0 0 1921 980">
    
                        @foreach ($golfview_units as $unit)
                            <a href="{{route('dashboard.unit', ['name' => $unit->name])}}" wire:navigate class="text-decoration-none link-light">

                                <polygon class="{{ strtolower($unit->status) }}-class" points="{{$unit->shape->points ?? '0,0'}}"></polygon>
                                
                                <text x="{{$unit->shape->text_x ?? 0;}}" y="{{$unit->shape->text_y ?? 0; }}"
                                    font-size="16" font-weight="light" fill="#fff">
            
                                    <tspan class="fw-semibold">{{$unit->name}}</tspan>
                                    
                                </text>
                            </a>  
                            
                        @endforeach
                    </svg>
    
                </div>
                    
            </div>

            {{-- Navegación Torres --}}
            <div class="col-12 col-lg-1 px-0 order-1 order-lg-2">
                <ul class="nav nav-pills nav-inventory mb-3 justify-content-center justify-content-lg-start" id="pills-tab" role="tablist">

                    <li class="nav-item me-4 me-lg-0" role="presentation">
                      <a href="{{route('dashboard.oceanview')}}" wire:navigate class="nav-link inventory-btns" >
                        <img src="{{asset('img/icons/ocean.png')}}" width="50px" alt="">
                        <div class="d-block d-lg-none mt-2 text-blue">{{__('Vista al mar')}}</div>
                      </a>
                    </li>
        
                    <li class="nav-item" role="presentation">
                      <button class="nav-link inventory-btns active" type="button" aria-selected="true">
                        <img src="{{asset('img/icons/golf.png')}}" width="50px" alt="">
                        <div class="d-block d-lg-none mt-2 text-blue">{{__('Vista al Golf')}}</div>
                      </button>
                    </li>
        
                </ul>
            </div>

        </div>


    </div>


</div>
