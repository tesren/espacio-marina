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
            <a href="{{route('dashboard.inventory')}}" class="btn btn-outline-blue rounded-end-0 rounded-start-circle"><i class="fa-solid fa-border-all"></i></a>
            <a href="{{--route('dashboard.search')--}}" class="btn btn-outline-blue rounded-start-0 rounded-end-circle"><i class="fa-solid fa-list"></i></a>
        </div>

        {{-- Inventario --}}
        <div class="row">

            <div class="col-12 col-lg-11">
                <div class="tab-content" id="pills-tabContent">
                    
                    <div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab" tabindex="0">
                        
                    </div>

                    <div class="tab-pane fade" id="pills-profile" role="tabpanel" aria-labelledby="pills-profile-tab" tabindex="0">...</div>
                </div>
            </div>

            <div class="col-12 col-lg-1">
                <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">

                    <li class="nav-item" role="presentation">
                      <button class="nav-link active" id="pills-home-tab" data-bs-toggle="pill" data-bs-target="#pills-home" type="button" role="tab" aria-controls="pills-home" aria-selected="true">Home</button>
                    </li>
        
                    <li class="nav-item" role="presentation">
                      <button class="nav-link" id="pills-profile-tab" data-bs-toggle="pill" data-bs-target="#pills-profile" type="button" role="tab" aria-controls="pills-profile" aria-selected="false">Profile</button>
                    </li>
        
                </ul>
            </div>

        </div>


    </div>


</div>
