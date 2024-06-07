<div>
    
    {{-- Knowing others is intelligence; knowing yourself is true wisdom. --}}
    @section('titles')
        <title>{{__('Inicio')}} - Espacio Marina</title>
    @endsection

    <section class="row position-relative mb-6 px-0">

        <div class="col-11 col-lg-9 px-0 position-relative">
            <picture>
                <!-- Imagen para pantallas de escritorio -->
                <source media="(min-width: 768px)" srcset="{{asset('/img/facha-golf-detras.webp')}}">
              
                <!-- Imagen para pantallas de teléfono -->
                <source media="(max-width: 767px)" srcset="{{ asset('img/fachada-atras-alberca.webp') }}">
              
                <!-- Fallback para navegadores que no soportan <picture> -->
                <img src="{{asset('/img/facha-golf-detras.webp')}}" alt="Fachada Espacio Marina" class="w-100" style="height: 70vh; object-fit:cover; object-position:top;">
            </picture>

        </div>

        <div class="col-1 col-lg-3 px-0">
            <img src="{{asset('img/blue-colors.webp')}}" alt="" class="w-100" style="height: 70vh; object-fit:cover;">
        </div>

        <div class="bg-black-gradient"></div>

        <div class="row justify-content-center justify-content-lg-end position-absolute bottom-0 start-0 h-100">

            <div class="col-12 col-lg-4 m-5 align-self-center p-5 text-darkblue" style="background-color: rgba(255, 255, 255, 0.85);">
                <h1 class="fw-bold fs-2">
                    {{__('Hola')}}, {{ auth()->user()->name }} 
                </h1>
                <div class="fw-bold fs-5 mb-3">{{__('Un lugar creado para ti')}}.</div>
                <p>{{__('Enamórate de Espacio Marina & Golf, un desarrollo ideal para relajarte, salir de la ciudad y disfrutar momentos especiales con tu familia en las hermosas playas de Puerto Vallarta.')}}</p>
                
                <div class="mb-3">{{__('¡Mira las unidades que tenemos para ti!')}}</div>
                <a href="{{route('dashboard.oceanview')}}" wire:navigate class="btn btn-blue w-100">
                    {{__('Ver inventario')}}
                </a>
            </div>

        </div>

    </section>

    <div class="row justify-content-evenly mb-6">

        <div class="col-12 col-lg-3 align-self-center">
            <h2 class="fw-bold">{{__('Cerca de todo')}}</h2>
        </div>

        <div class="col-12 col-lg-3">
            <p>{{__('Disfruta de tus vacaciones en la mejor zona de Puerto Vallarta, una ubicación privilegiada a sólo 400 m de la playa y a 5 min del aeropuerto.')}}</p>
        </div>

        <div class="col-12 col-lg-4 text-start text-lg-center">
            <div>{{__('Playa')}} Puerto Vallarta <span class="ms-3">Club de Golf Marina</span></div>
            <div>Marina Vallarta <span class="mx-3">{{__('Aeropuerto')}}</span> Starbucks</div>
            <div>La Terraza di Roma <span class="ms-3">Viña & Salvatore’s Wine Bar</span></div>
        </div>

        <div class="col-12 text-center mt-4">
            <a href="#more-info" class="btn btn-link link-dark"><i class="fa-solid fa-bounce fa-2x fa-chevron-down"></i></a>
        </div>

    </div>


    {{-- Galería --}}
    <div class="row container justify-content-center mb-6" id="more-info">

        <div class="col-12 col-lg-3 px-0">
            <img src="{{asset('img/alberca.jpg')}}" alt="Alberca de Espacio Marina" class="w-100 p-1 object-fit-cover" data-fancybox="gallery" style="height: 25vh;">
            <img src="{{asset('img/gym.jpeg')}}" alt="Gimnasio de Espacio Marina" class="w-100 p-1 object-fit-cover" data-fancybox="gallery" style="height: 26vh;">
        </div>

        <div class="col-12 col-lg-6 p-1">
            <img src="{{asset('img/jacuzzi.jpg')}}" alt="Jacuzzi de Espacio Marina" class="w-100 object-fit-cover" data-fancybox="gallery" style="height: 50vh;">
        </div>

        <div class="col-12 col-lg-3 px-0">
            <img src="{{asset('img/terraza-vista-al-mar.jpg')}}" alt="Vista de Espacio Marina" class="w-100 p-1 object-fit-cover" data-fancybox="gallery" style="height: 25vh;">
            <img src="{{asset('img/interior-room-1.webp')}}" alt="Recámaras de Espacio Marina" class="w-100 p-1 object-fit-cover" data-fancybox="gallery" style="height: 26vh;">
        </div>

    </div>

    {{-- Amenidades --}}
    <div class="container mb-6">
        <h2>{{__('El lugar ideal que estabas buscando')}}</h2>
        <p class="mb-5">{{__('Invierte en un desarrollo único con un diseño arquitectónico y acabados de primer nivel, en el corazón de Puerto Vallarta.')}}</p>

        <div class="row justify-center text-center">

            <div class="col-6 col-lg-2">
                <img src="{{asset('img/icons/building.png')}}" alt="" class="w-100 px-3 px-lg-5">
                <div class="fw-bold my-3">210 {{__('Condominios')}}</div>
            </div>

            <div class="col-6 col-lg-2">
                <img src="{{asset('img/icons/ocean.png')}}" alt="" class="w-100 px-3 px-lg-5">
                <div class="fw-bold my-3">{{__('Vista al mar')}}</div>
            </div>

            <div class="col-6 col-lg-2">
                <img src="{{asset('img/icons/golf.png')}}" alt="" class="w-100 px-3 px-lg-5">
                <div class="fw-bold my-3">{{__('Vista al campo de golf')}}</div>
            </div>

            <div class="col-6 col-lg-2">
                <img src="{{asset('img/icons/park.png')}}" alt="" class="w-100 px-3 px-lg-5">
                <div class="fw-bold my-3">{{__('Parque Interno')}}</div>
            </div>

            <div class="col-6 col-lg-2">
                <img src="{{asset('img/icons/green-areas.png')}}" alt="" class="w-100 px-3 px-lg-5">
                <div class="fw-bold my-3">{{__('Ámplias áreas verdes')}}</div>
            </div>

            <div class="col-6 col-lg-2">
                <img src="{{asset('img/icons/area.png')}}" alt="" class="w-100 px-3 px-lg-5">
                <div class="fw-bold my-3">{{__('11 amenidades en más de 6,900 m2')}}</div>
            </div>

        </div>
        
    </div>

    {{-- Tipos --}}
    <section class="row mb-6 bg-line-blue">

        <div class="splide" aria-label="Tipos de Unidades" id="splide_unitTypes">
            <div class="splide__track">

                <ul class="splide__list">
                    @foreach ($unit_types as $type)

                        @php
                            $blueprints = $type->getMedia('blueprints');
                        @endphp
                        
                        <li class="splide__slide text-center px-3">
                            <div class="fs-5 fw-bold mt-2 position-relative z-3">{{ $type->name }} - {{__($type->option)}}</div>
                            @isset($blueprints[0])
                                <img src="{{ $blueprints[0]->getUrl('medium') }}" alt="Tipo de Unidad Espacio Marina" class="w-100" style="object-fit: contain;">
                            @endisset
                        </li>
            
                    @endforeach                  
                </ul>

            </div>
        </div>

    </section>

    {{-- Master Plan --}}
    <section class="container row justify-content-evenly mb-6">

        <div class="col-12 col-lg-6 text-center text-lg-end mb-4">
            <h3 class="fs-0 fw-bold">{{__('Planta de conjunto')}}</h3>
        </div>
        <div class="col-12 col-lg-6 text-center text-lg-start align-self-center mb-4">
            <p class="fs-5">{{__('Vistas increibles en todos lados, elige la mejor opción que tenemos para ti.')}}</p>
        </div>
        
        <div class="col-1 align-self-center text-center d-none d-lg-block">
            <img src="{{asset('img/icons/ocean.png')}}" alt="" class="w-100 mb-1">
            <div class="fw-bold">{{__('Vista al mar')}}</div>
        </div>

        <div class="col-12 col-lg-9">
            <img src="{{asset('img/master-plan.webp')}}" alt="Master Plan de Espacio Marina & Golf" class="w-100">
        </div>

        <div class="col-1 align-self-center text-center d-none d-lg-block">
            <img src="{{asset('img/icons/golf.png')}}" alt="" class="w-100 mb-1">
            <div class="fw-bold">{{__('Vista al campo de golf')}}</div>
        </div>


    </section>

    {{-- Ubicación --}}
    <section class="container mb-6">
        <h4 class="fs-2">{{__('Ubicación')}}</h4>
        <p class="mb-4 fs-5">{{__('Explora en el mapa y descubre la excelente ubicación de tu próxima inversión.')}}</p>

        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1061.259475496731!2d-105.26063120297846!3d20.666436713417106!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x842145d623ba3ed5%3A0x859f087aedd0da99!2sEspacio%20Marina%20%26%20Golf!5e0!3m2!1ses-419!2smx!4v1717431581145!5m2!1ses-419!2smx" width="100%" height="600" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
    </section>


    @script
        <script>
            // This Javascript will get executed every time this component is loaded onto the page...
            Fancybox.bind("[data-fancybox]", {
                Hash: false,
            });

            let splide_unitTypes = document.getElementById('splide_unitTypes');

            if(splide_unitTypes){

                splide_unitTypes = new Splide( '#splide_unitTypes', {
                    type   : 'loop',
                    perPage: 4,
                    rewind : true,
                    perMove: 1,
                    breakpoints: {
                        640: {
                            perPage: 1,
                        },
                    }
                } );
                
                splide_unitTypes.mount();
            }
        </script>
    @endscript

</div>
