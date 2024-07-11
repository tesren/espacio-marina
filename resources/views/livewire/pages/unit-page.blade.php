<div>
    {{-- Do your work, then step back. --}}
    @section('titles')
        <title>{{__('Condominio')}} {{$unit->name}} {{__('en venta en Marina Vallarta')}} - Espacio Marina & Golf</title>
        <meta name="description" content="{{__('Condominio')}} {{$unit->name}} {{__('un condominio excepcional en venta dentro de nuestro exclusivo desarrollo en Marina Vallarta. Ofrece una experiencia de vida incomparable. Descubre más sobre este condominio único y agenda una visita para experimentar en persona la elegancia y el confort que te espera en Espacio Marina & Golf.')}}">
    @endsection

    @php
        $unit_gallery = $unit->getMedia('unitgallery');
        $unit_type_gallery = $unit->unitType->getMedia('gallery');
    @endphp

    {{-- Imagenes --}}
    <div class="row mb-0 mb-lg-5">

        <div class="col-12 col-lg-8 p-0 p-lg-1">
            @if ( isset($unit_type_gallery[0]) )
                <img src="{{$unit_type_gallery[0]->getUrl('large')}}" alt="Galería unidad {{$unit->name}} - Espacio Marina & Golf" class="w-100 unit-imgs" data-fancybox="gallery">
            @else
                <img src="{{asset('/img/interior-room-1.webp')}}" alt="Galería unidad {{$unit->name}} - Espacio Marina & Golf" class="w-100 unit-imgs" data-fancybox="gallery">
                <img src="{{asset('/img/sala.jpg')}}" alt="Galería unidad {{$unit->name}} - Espacio Marina & Golf" class="d-none" data-fancybox="gallery">
            @endif
        </div>

        
        <div class="col-12 col-lg-4 p-0 p-lg-1">

            {{-- Vista --}}
            @if ( isset($unit->view_path ) )
                <img src="{{ asset('media/'.$unit->view_path) }}" alt="Vista de la Unidad {{$unit->name}} Espacio Marina & Golf" class="w-100 unit-imgs" data-fancybox="gallery" data-caption="{{__('Vista de la unidad')}}">
            @else

                {{-- Vista por defecto mar --}}
                @if ( $unit->section_id == 1 or $unit->section_id == 4 )

                    @if ($unit->floor < 4)
                        <img src="{{asset('/img/ocean-view.jpg')}}" alt="Vista de la Unidad {{$unit->name}} Espacio Marina & Golf" class="w-100 unit-imgs" data-fancybox="gallery" data-caption="{{__('Vista de la unidad')}}">
                    @else
                        <img src="{{ asset('img/niveles/nivel-'.$unit->floor.'-mar.JPG') }}" alt="Vista de la Unidad {{$unit->name}} Espacio Marina & Golf" class="w-100 unit-imgs" data-fancybox="gallery" data-caption="{{__('Vista de la unidad')}}">
                        <img src="{{asset('/img/ocean-view.jpg')}}" alt="Galería unidad {{$unit->name}} - Espacio Marina & Golf" class="d-none" data-fancybox="gallery">
                    @endif
                
                {{-- Vista por defecto golf --}}
                @else

                    @if ($unit->floor < 4)
                        <img src="{{asset('img/golf-view.jpg')}}" alt="Vista de la Unidad {{$unit->name}} Espacio Marina & Golf" class="w-100 unit-imgs" data-fancybox="gallery" data-caption="{{__('Vista de la unidad')}}">
                    @else
                        <img src="{{ asset('img/niveles/nivel-'.$unit->floor.'-golf.JPG') }}" alt="Vista de la Unidad {{$unit->name}} Espacio Marina & Golf" class="w-100 unit-imgs" data-fancybox="gallery" data-caption="{{__('Vista de la unidad')}}">
                        <img src="{{asset('img/golf-view.jpg')}}" alt="Galería unidad {{$unit->name}} - Espacio Marina & Golf" class="d-none" data-fancybox="gallery">
                    @endif

                @endif


            @endif

        </div>
    
    </div>

    {{-- Colores solo en móvil --}}
    <div class="row mb-4 mb-lg-0 d-flex d-lg-none">
        <div class="col-3 py-3" style="background-color:#2C4669;"></div>
        <div class="col-3 py-3" style="background-color:#4A7A9D;"></div>
        <div class="col-3 py-3" style="background-color:#2F9DB1;"></div>
        <div class="col-3 py-3" style="background-color:#7AB8D7;"></div>
    </div>

    {{-- Galería de tipos de unidad --}}
    @if( count($unit_type_gallery) > 1 )

        @for ($i=1; $i<count($unit_type_gallery); $i++ )
            <img src="{{$unit_type_gallery[$i]->getUrl('large')}}" alt="Galería unidad {{$unit->name}} - Espacio Marina & Golf" class="d-none" data-fancybox="gallery">
        @endfor

    @endif


    {{-- Galeria de la unidad --}}
    @if( count($unit_gallery) > 0 )
    
        @foreach ($unit_gallery as $img)
            <img src="{{ $img->getUrl('large') }}" alt="Galería unidad {{$unit->name}} - Espacio Marina & Golf" class="d-none" data-fancybox="gallery">
        @endforeach

    @endisset

    {{-- Información --}}
    <div class="row justify-content-evenly mb-6">
        
        @php
            if($unit->status == 'Disponible'){
                $badgeBg = 'bg-success';
                $textColor = 'text-success';
            }elseif($unit->status == 'Apartada'){
                $badgeBg = 'bg-warning';
                $textColor = 'text-warning';
            }
            else{
                $badgeBg = 'bg-danger';
                $textColor = 'text-danger';
            }
        @endphp

        <div class="col-12 col-lg-11 px-4 px-lg-0 order-1 order-lg-1 text-center text-lg-start">

            <div class="{{$textColor}} mb-2 fs-5 fw-light d-inline-block d-lg-none">
                {{__($unit->status)}}
            </div>

            <h1 class="mb-1">
                {{__('Unidad')}} {{$unit->name}}
            </h1>

            <div class="fs-4 fw-light text-secondary mb-1 mb-lg-4">{{__('Tipo')}} {{$unit->unitType->name}}</div>
        </div>

        <div class="col-12 col-lg-7 px-4 px-lg-4 order-3 order-lg-2">
            
            <h2 class="fs-3">{{__('Características')}}</h2>

            <div class="row mb-3 fs-5">

                <div class="col-12 col-lg-3 mb-3">
                    <i class="fa-solid fa-bed text-blue"></i> 
                    @if ($unit->unitType->bedrooms == 0)

                        <span class="fw-light">{{__('Estudio')}}</span>

                    @elseif ($unit->unitType->bedrooms == 1)

                        {{$unit->unitType->bedrooms}} <span class="fw-light">{{__('Recámara')}}</span> 
                        
                    @else
                        {{$unit->unitType->bedrooms}} <span class="fw-light">{{__('Recámaras')}}</span> 
                    @endif

                </div>

                <div class="col-12 col-lg-3 mb-3">
                    <i class="fa-solid fa-bath text-blue"></i> {{$unit->unitType->bathrooms}} 
                    @if ($unit->unitType->bathrooms > 1)
                        <span class="fw-light">{{__('Baños')}}</span>
                    @else
                        <span class="fw-light">{{__('Baño')}}</span>
                    @endif
                </div>

                <div class="col-12 col-lg-3 mb-3">
                    <i class="fa-solid fa-arrow-turn-up text-blue"></i> 
                    <span class="fw-light">{{__('Nivel')}}</span> {{$unit->floor}}
                </div>

                <div class="w-100"></div>

                <div class="col-12 col-lg-4 mb-3">
                    <i class="fa-solid fa-car text-blue"></i> {{$unit->unitType->parking_spaces}} {{__('Cajón de estacionamiento')}}
                </div>

                <div class="col-12 col-lg-5 mb-3">
                    <i class="fa-solid fa-building text-blue"></i> {{__($unit->section->name)}}
                </div>

            </div>

            <h2 class="fs-3">{{__('Dimensiones')}}</h2>
            <div class="row fs-5 fw-light mb-5 mb-lg-0">
                <div class="col-12 col-lg-4 mb-3">
                    <i class="fa-solid fa-expand text-blue"></i> {{__('Interior')}}: {{$unit->interior_const}} {{__('m²')}}
                </div>

                <div class="col-12 col-lg-4 mb-3">
                    <i class="fa-solid fa-people-roof text-blue"></i> {{__('Terraza Techada')}}: {{$unit->exterior_const}} {{__('m²')}}
                </div>

                @if($unit->extra_exterior_const != 0)
                    <div class="col-12 col-lg-4 mb-3">
                        <i class="fa-solid fa-maximize text-blue"></i> {{__('Terraza Extendida')}}: {{$unit->extra_exterior_const}} {{__('m²')}}
                    </div>
                @endif
                
                @if($unit->patio != 0)
                    <div class="col-12 col-lg-4 mb-3">
                        <i class="fa-solid fa-maximize text-blue"></i> {{__('Patio')}}: {{$unit->patio}} {{__('m²')}}
                    </div>
                @endif

                @if($unit->rooftop != 0)
                    <div class="col-12 col-lg-4 mb-3">
                        <i class="fa-solid fa-umbrella-beach text-blue"></i> {{__('Rooftop')}}: {{$unit->rooftop}} {{__('m²')}}
                    </div>
                @endif

                @if($unit->garden != 0)
                    <div class="col-12 col-lg-4 mb-3">
                        <i class="fa-solid fa-seedling text-blue"></i> {{__('Jardín')}}: {{$unit->garden}} {{__('m²')}}
                    </div>
                @endif

                @if($unit->storage != 0)
                    <div class="col-12 col-lg-4 mb-3">
                        <i class="fa-solid fa-warehouse text-blue"></i> {{__('Bodega')}}: {{$unit->storage}} {{__('m²')}}
                    </div>
                @endif

                <div class="col-12 col-lg-4 mb-3">
                    <i class="fa-solid fa-house-chimney text-blue"></i> {{__('Total')}}: {{$unit->const_total}} {{__('m²')}}
                </div>
            </div>

        </div>

        <div class="col-12 col-lg-4 align-self-center text-center position-relative order-2 order-lg-3 mb-5 mb-lg-0">

            @if ($unit->price != 0 and $unit->status == 'Disponible')

                <div class="badge {{$badgeBg}} rounded-pill mb-2 fs-5 fw-light d-none d-lg-inline-block">
                    {{__($unit->status)}}
                </div>

                <h3 class="fs-1 text-center mb-0">${{ number_format($unit->price) }} {{$unit->currency}}</h3>
                <div class="fs-6 mb-2 text-center">{{__('El precio incluye 4% de Descuento')}}</div>
            @endif

            <div class="fs-5 mb-1 d-none d-lg-block">{{__('¿Necesitas más información?')}}</div>
            <a href="#contact" class="btn btn-blue d-inline-block shadow rounded-2">
                {{ __('Contactar a un asesor') }}
            </a>
        </div>

    </div>

    @php
        $blueprints = $unit->unitType->getMedia('blueprints')
    @endphp

    {{-- Planos --}}
    @if ( count($blueprints) > 0)
        <div class="row justify-content-evenly mb-6 bg-line-blue">
            <div class="col-12 col-lg-10 col-xxl-7">

                <h3 class="fs-2 text-center mb-4">{{__('Planos de la unidad')}}</h3>
                
                <img src="{{ $blueprints[0]->getUrl('large') }}" alt="Planos de la unidad {{$unit->name}} de Espacio Marina & Golf" class="w-100" data-fancybox="blueprints">
                <div class="my-2 text-center px-3 fs-5">{{$unit->unitType->name}}</div>
            </div>
        </div>
    @endif

    <div class="fs-7 text-secondary text-center">{{__('Las imagenes son con fines ilustrativos. Precios y dimensiones pueden cambiar sin previo aviso.')}}</div>

    {{-- Formulario de contacto --}}
    @livewire('contact-form')

    @script
        <script>
            // This Javascript will get executed every time this component is loaded onto the page...
            Fancybox.bind("[data-fancybox]", {
                Hash: false,
            });
        </script>
    @endscript

</div>