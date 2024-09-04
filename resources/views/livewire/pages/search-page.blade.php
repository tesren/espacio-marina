<div>
    {{-- Do your work, then step back. --}}

    @section('titles')
        <title>{{__('Búsqueda de Condominios')}} - Espacio Marina & Golf</title>
        <meta name="description" content="{{__('Herramienta de búsqueda de Espacio Marina & Golf, donde encontrar tu residencia ideal es fácil y personalizado. Explora nuestra lista de condominios con opciones de filtrado por precio, piso, tipo y más, para encontrar exactamente lo que estás buscando. Con detalles y fotografías cautivadoras, esta búsqueda te acerca a tu hogar perfecto en el paraíso de Puerto Vallarta.')}}">
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


    <div class="container mt-5 mb-4">
        <h1>{{__('Búsqueda de Condominios')}}</h1>
        <p>{{__('Busca de forma más práctica por medio de nuestro formulario y nuestra tabla.')}}</p>
        <div class="d-flex mb-4">
            <div class="me-3">
                <span class="px-2 py-1 bg-success text-success rounded-2">D</span> {{__('Disponible')}}
            </div>

            <div class="me-3">
                <span class="px-2 py-1 bg-warning text-warning rounded-2">A</span> {{__('Apartado')}}
            </div>

            <div>
                <span class="px-2 py-1 bg-danger text-danger rounded-2">V</span> {{__('Vendido')}}
            </div>
        </div>

        @include('livewire.components.inventory-style-nav')

        
        {{-- Formulario de búsqueda --}}
        <div class="row justify-content-center mb-5">

            <div class="col-12 col-lg-11">
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
                            <select class="form-select" id="view" wire:model="view" aria-label="{{__('Vista')}}">
                                <option value="0">{{__('Cualquier vista')}}</option>
                                <option value="Mar">{{__('Mar')}}</option>
                                <option value="Golf">{{__('Golf')}} </option>
                            </select>
                            <label for="view">{{__('Vista')}}</label>
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
                            <i class="fa-solid fa-magnifying-glass"></i>
                        </button>
                    </div>
                </form>
            </div>
        
        </div>

    </div>

    <div class="px-3 px-lg-5 mb-6" style="min-height: 50vh;">
        <div class="table-responsive shadow-5 mb-3">
            <table class="table table-sm  table-light mb-0">

                <thead>
                    <th class="text-center">{{__('Unidad')}}</th>
                    <th class="text-center">{{__('Piso')}}</th>
                    <th class="d-none d-lg-table-cell">{{__('Tipo')}}</th>
                    <th class="text-center">{{__('Recámaras')}}</th>
                    <th class="d-none d-lg-table-cell">{{__('Torre')}}</th>
                    <th class="d-none d-lg-table-cell">{{__('Vista')}}</th>
                    <th class="text-center">{{__('m²')}}</th>
                    <th>{{__('Precio')}}</th>
                    <th></th>
                </thead>

                <tbody>

                    @if ($units->isNotEmpty())
                        @foreach ($units as $unit)
                            @php
                                if($unit->status == 'Disponible'){
                                    $badgeBg = 'bg-success';
                                }elseif($unit->status == 'Apartada'){
                                    $badgeBg = 'bg-warning';
                                }
                                else{
                                    $badgeBg = 'bg-danger';
                                }
                            @endphp

                            <tr wire:key={{$unit->id}}>

                                <td class="{{$badgeBg}} text-light text-center fw-bold">{{ $unit->name }}</td>
                                <td class="text-center">{{ $unit->floor }}</td>
                                <td class="d-none d-lg-table-cell"> {{ $unit->unitType->name }}</td>

                                <td class="text-center">
                                    @if ($unit->unitType->bedrooms == 0)
                                        {{__('Loft')}}
                                    @else
                                        {{ $unit->unitType->bedrooms }}
                                    @endif
                                </td>

                                <td class="d-none d-lg-table-cell">{{ $unit->section->tower_name }}</td>
                                <td class="d-none d-lg-table-cell">{{ $unit->section->view }}</td>

                                <td>{{ $unit->const_total }} </td>
                                <td>
                                    @if ($unit->price != 0 and $unit->status == 'Disponible')
                                        ${{ number_format($unit->price) }} {{$unit->currency}}
                                    @endif
                                </td>
                                <td>
                                    <a href="{{ route('pages.unit', ['name'=>$unit->name, 'contact' => request()->query('contact') ]) }}" class="btn btn-blue" target="_blank" rel="noopener noreferrer">
                                        {{__('Ver más')}}
                                    </a>
                                </td>
                            </tr>
                        @endforeach
                    @else
                    
                        <tr>
                            <td class="text-center fs-5 py-3" colspan="9">
                                {{__('Lo sentimos, no hay resultados para su búsqueda')}}
                            </td>
                        </tr>

                    @endif

                </tbody>

            </table>
        </div>

        {{ $units->links(data: ['scrollTo' => false]) }}

    </div>

    @script
        <script>
            const form_inputs = document.getElementById('search_input_group');

            if(form_inputs){

                if (window.innerWidth <= 768) {
                    // Código a ejecutar solo en dispositivos móviles (ancho menor o igual a 768px)
                    form_inputs.classList.remove('input-group');
                    form_inputs.classList.remove('shadow');
                }else{
                    form_inputs.classList.add('input-group');
                    form_inputs.classList.add('shadow');
                }

            }
        </script>
    @endscript

</div>
