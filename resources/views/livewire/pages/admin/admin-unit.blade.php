<div>
    {{-- Do your work, then step back. --}}
    @section('titles')
        <title>{{__('Condominio')}} {{$unit->name}} - Espacio Marina & Golf</title>
    @endsection

    @php
        $unit_gallery = $unit->getMedia('unitgallery');
        $unit_type_gallery = $unit->unitType->getMedia('gallery');
    @endphp

    {{-- Imagenes --}}
    <div class="row mb-4 mb-lg-5">

        <div class="col-12 col-lg-8 p-1">
            @if ( isset($unit_type_gallery[0]) )
                <img src="{{$unit_type_gallery[0]->getUrl('large')}}" alt="Galería unidad {{$unit->name}} - Espacio Marina & Golf" class="w-100 unit-imgs" data-fancybox="gallery">
            @else
                <img src="{{asset('/img/interior-room-1.webp')}}" alt="Galería unidad {{$unit->name}} - Espacio Marina & Golf" class="w-100 unit-imgs" data-fancybox="gallery">
                <img src="{{asset('/img/sala.jpg')}}" alt="Galería unidad {{$unit->name}} - Espacio Marina & Golf" class="d-none" data-fancybox="gallery">
            @endif
        </div>

        
        <div class="col-12 col-lg-4 p-1">

            {{-- Vista y video de vista --}}
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

        <div class="col-12 col-lg-7">
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

            <div class="badge {{$badgeBg}} rounded-pill mb-2 fs-5 fw-light">
                {{__($unit->status)}}
            </div>
            
            <h1 class="mb-1">
                {{__('Unidad')}} {{$unit->name}}

                @if ( !null == $unit->users()->wherePivot('unit_id', $unit->id)->wherePivot('user_id', auth()->user()->id)->first() )

                    <button wire:click="removeUnit({{$unit->id}})" class="btn btn-link link-danger fs-3" title="{{__('Quitar de Favoritos')}}">
                        <i class="fa-solid fa-heart"></i>
                    </button>

                @else

                    <button wire:click="saveUnit({{$unit->id}})" class="btn btn-link link-danger fs-3"  title="{{__('Agregar a Favoritos')}}">
                        <i class="fa-regular fa-heart"></i>
                    </button>

                @endif
            </h1>

            <div class="fs-4 fw-light text-secondary mb-4">{{__('Tipo')}} {{$unit->unitType->name}}</div>

            <h2 class="fs-3">{{__('Características')}}</h2>

            <div class="d-flex mb-3 fs-5">

                <div>
                    <i class="fa-solid fa-bed"></i> 
                    @if ($unit->unitType->bedrooms == 0)
                        <span class="fw-light">{{__('Estudio')}}</span>
                    @else
                        {{$unit->unitType->bedrooms}} <span class="fw-light">{{__('Recámaras')}}</span> 
                    @endif
                </div>

                <div class="mx-3">
                    <i class="fa-solid fa-bath"></i> {{$unit->unitType->bathrooms}} 
                    @if ($unit->unitType->bathrooms > 1)
                        <span class="fw-light">{{__('Baños')}}</span>
                    @else
                        <span class="fw-light">{{__('Baño')}}</span>
                    @endif
                </div>

                <div>
                    <i class="fa-solid fa-arrow-turn-up"></i> 
                    <span class="d-none d-lg-inline fw-light">{{__('Nivel')}}</span> {{$unit->floor}}
                </div>

            </div>

            <div class="d-flex mb-4 fs-5">

                <div>
                    <i class="fa-solid fa-car"></i> {{$unit->unitType->parking_spaces}} {{__('Cajón de estacionamiento')}}
                </div>

                <div class="mx-3">
                    <i class="fa-solid fa-building"></i> {{__($unit->section->name)}}
                </div>

            </div>

            <h2 class="fs-3">{{__('Dimensiones')}}</h2>
            <div class="row fs-5 fw-light">
                <div class="col-6 col-lg-4 mb-3">
                    <i class="fa-solid fa-expand"></i> {{__('Interior')}}: {{$unit->interior_const}} {{__('m²')}}
                </div>

                <div class="col-6 col-lg-4 mb-3">
                    <i class="fa-solid fa-people-roof"></i> {{__('Terraza Techada')}}: {{$unit->exterior_const}} {{__('m²')}}
                </div>

                @if($unit->extra_exterior_const != 0)
                    <div class="col-6 col-lg-4 mb-3">
                        <i class="fa-solid fa-maximize"></i> {{__('Terraza Extendida')}}: {{$unit->extra_exterior_const}} {{__('m²')}}
                    </div>
                @endif
                
                @if($unit->patio != 0)
                    <div class="col-6 col-lg-4 mb-3">
                        <i class="fa-solid fa-maximize"></i> {{__('Patio')}}: {{$unit->patio}} {{__('m²')}}
                    </div>
                @endif

                @if($unit->rooftop != 0)
                    <div class="col-6 col-lg-4 mb-3">
                        <i class="fa-solid fa-umbrella-beach"></i> {{__('Rooftop')}}: {{$unit->rooftop}} {{__('m²')}}
                    </div>
                @endif

                @if($unit->garden != 0)
                    <div class="col-6 col-lg-4 mb-3">
                        <i class="fa-solid fa-seedling"></i> {{__('Jardín')}}: {{$unit->garden}} {{__('m²')}}
                    </div>
                @endif

                @if($unit->storage != 0)
                    <div class="col-6 col-lg-4 mb-3">
                        <i class="fa-solid fa-warehouse"></i> {{__('Bodega')}}: {{$unit->storage}} {{__('m²')}}
                    </div>
                @endif

                <div class="col-6 col-lg-4 mb-3">
                    <i class="fa-solid fa-house-chimney"></i> {{__('Total')}}: {{$unit->const_total}} {{__('m²')}}
                </div>
            </div>
        </div>

        <div class="col-12 col-lg-4 align-self-center text-center position-relative">

            @if ($unit->price != 0 and $unit->status == 'Disponible')
                <div class="fs-5 fw-light badge bg-darkblue rounded-pill">{{__('Precio')}}</div>
                <h3 class="fs-1 text-center">${{ number_format($unit->price) }} {{$unit->currency}}</h3>
            @endif

            {{-- <a href="#contact" class="btn btn-blue d-block">
                {{ __('Contactar a un asesor') }}
            </a> --}}
        </div>

    </div>

    @php
        $blueprints = $unit->unitType->getMedia('blueprints')
    @endphp

    {{-- Planos --}}
    @if ( count($blueprints) > 0)
        <div class="row justify-content-evenly mb-6">
            <div class="col-12 col-lg-10 col-xxl-7">

                <h3 class="fs-2 text-center mb-4">{{__('Planos de la unidad')}}</h3>
                

                <img src="{{ $blueprints[0]->getUrl('large') }}" alt="Planos de la unidad {{$unit->name}} de Espacio Marina & Golf" class="w-100" data-fancybox="blueprints">
                <div class="fs-7 text-secondary text-center">{{__('Las imagenes son con fines ilustrativos. Precios y dimensiones pueden cambiar sin previo aviso.')}}</div>
            </div>
        </div>
    @endif

    @script
        <script>
            // This Javascript will get executed every time this component is loaded onto the page...
            Fancybox.bind("[data-fancybox]", {
                Hash: false,
            });
        </script>
    @endscript

</div>