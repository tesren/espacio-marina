<div>
    {{-- Because she competes with no one, no one can compete with her. --}}

    @section('titles')
        <title>{{__('Inventario')}} - Espacio Marina</title>
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
        <p>{{__('Selecciona una de las vistas para ver unos de los modelos disponibles')}}</p>
    
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
            <a href="{{route('dashboard.inventory')}}" class="btn btn-outline-blue rounded-end-0 rounded-start-circle" wire:navigate><i class="fa-solid fa-border-all"></i></a>
            <a href="{{route('dashboard.search')}}" class="btn btn-outline-blue rounded-start-0 rounded-end-circle" wire:navigate><i class="fa-solid fa-list"></i></a>
        </div>

        {{-- Inventario --}}
        <div class="row">

            <div class="col-12 col-lg-11 px-0 order-2 order-lg-1">
                <div class="tab-content" id="pills-tabContent">
                    
                    {{-- Vista al Mar --}}
                    <div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab" tabindex="0">
                        
                        <div class="position-relative p-0">
                            <img src="{{asset('img/fachada-vista-mar.webp')}}" alt="Inventario disponible de Espacio Marina" class="w-100 shadow-5">
            
                            <svg xmlns="http://www.w3.org/2000/svg" version="1.1" xmlns:xlink="http://www.w3.org/1999/xlink" class="position-absolute start-0 top-0 px-0" viewBox="0 0 1920 980">
            
                                @foreach ($oceanview_units as $unit)
                                    <a href="{{route('dashboard.unit', ['name' => $unit->name])}}" wire:navigate class="text-decoration-none link-light">

                                        <polygon class="{{ strtolower($unit->status) }}-class" points="{{$unit->shape->points ?? '0,0'}}"></polygon>
                                        
                                        <text x="{{$unit->shape->text_x ?? 0;}}" y="{{$unit->shape->text_y ?? 0; }}"
                                            font-size="16" font-weight="light" fill="#fff" >
                    
                                            <tspan class="fw-semibold">{{$unit->name}}</tspan>
                                            
                                        </text>
                                    </a>  
                                    
                                @endforeach
                            </svg>
            
                        </div>

                    </div>

                    {{-- Vista al Golf --}}
                    <div class="tab-pane fade" id="pills-profile" role="tabpanel" aria-labelledby="pills-profile-tab" tabindex="0">
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

                </div>
            </div>

            <div class="col-12 col-lg-1 px-0 order-1 order-lg-2">
                <ul class="nav nav-pills nav-inventory mb-3 justify-content-center justify-content-lg-start" id="pills-tab" role="tablist">

                    <li class="nav-item me-4 me-lg-0" role="presentation">
                      <button class="nav-link active inventory-btns" id="pills-home-tab" data-bs-toggle="pill" data-bs-target="#pills-home" type="button" role="tab" aria-controls="pills-home" aria-selected="true">
                        <img src="{{asset('img/icons/ocean.png')}}" width="50px" alt="">
                        <div class="d-block d-lg-none mt-2 text-blue">{{__('Vista al mar')}}</div>
                      </button>
                    </li>
        
                    <li class="nav-item" role="presentation">
                      <button class="nav-link inventory-btns" id="pills-profile-tab" data-bs-toggle="pill" data-bs-target="#pills-profile" type="button" role="tab" aria-controls="pills-profile" aria-selected="false">
                        <img src="{{asset('img/icons/golf.png')}}" width="50px" alt="">
                        <div class="d-block d-lg-none mt-2 text-blue">{{__('Vista al Golf')}}</div>
                      </button>
                    </li>
        
                </ul>
            </div>

        </div>


    </div>


</div>
