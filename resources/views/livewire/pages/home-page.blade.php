<div>
    {{-- To attain knowledge, add things every day; To attain wisdom, subtract things every day. --}}

    @section('titles')
        <title>Espacio Marina & Golf - {{__('Preventa de Condominios en Marina Vallarta')}}</title>
        <meta name="description" content="{{__('Descubre Espacio Marina & Golf, condominios con vista al mar y al club de Golf Marina Vallarta. Estos exclusivos condominios en preventa ofrecen un estilo de vida único con vistas panorámicas y amenidades de lujo. ¡Aprovecha los precios de preventa y asegura tu lugar en estas icónicas torres de condominios en Puerto Vallarta!')}}">
    @endsection


    <section class="row position-relative mb-6 px-0">

        <div class="col-12 col-lg-9 px-0 position-relative">
            <picture>
                <!-- Imagen para pantallas de escritorio -->
                <source media="(min-width: 768px)" srcset="{{asset('/img/facha-golf-detras.webp')}}">
              
                <!-- Imagen para pantallas de teléfono -->
                <source media="(max-width: 767px)" srcset="{{ asset('/img/home-mobile.webp') }}">
              
                <!-- Fallback para navegadores que no soportan <picture> -->
                <img src="{{asset('/img/facha-golf-detras.webp')}}" alt="Fachada Espacio Marina" class="w-100 object-fit-cover" style="height: 77vh; object-position:top;">
            </picture>

        </div>

        <div class="col-1 col-lg-3 px-0 d-none d-lg-block">
            <img src="{{asset('img/blue-colors.webp')}}" alt="" class="w-100" style="height: 77vh; object-fit:cover;">
        </div>

        <div class="bg-black-gradient"></div>

        <div class="row justify-content-center justify-content-lg-end position-absolute bottom-0 start-0 h-100">

            <div class="col-12 col-lg-4 col-xxl-3 m-5 align-self-center p-5 text-darkblue" style="background-color: rgba(255, 255, 255, 0.85);">
                <h1 class="fw-bold fs-2">
                    {{__('Un lugar creado para ti')}}.
                </h1>

                <p>{{__('Enamórate de Espacio Marina & Golf, un desarrollo ideal para relajarte, salir de la ciudad y disfrutar momentos especiales con tu familia en las hermosas playas de Puerto Vallarta.')}}</p>
                
                <div class="mb-3">{{__('¡Mira las unidades que tenemos para ti!')}}</div>
                <a href="{{ route('pages.ocean') }}" wire:navigate class="btn btn-blue w-100">
                    {{__('Ver inventario')}}
                </a>
            </div>

        </div>

    </section>

    <div class="row container justify-content-evenly mb-0 mb-lg-5 px-0">

        <div class="col-12 col-lg-4 align-self-center text-center text-lg-start">
            <h2 class="fw-bold fs-0 mb-4 mb-lg-0">{{__('Cerca de todo')}}</h2>
        </div>

        <div class="col-12 col-lg-4 border-start border-end border-2 align-self-center px-3 px-lg-5 border-primary">
            <p class="fs-5 fw-light">{{__('Disfruta de tus vacaciones en la mejor zona de Puerto Vallarta, una ubicación privilegiada a sólo 400 m de la playa y a 5 min del aeropuerto.')}}</p>
        </div>

        <div class="col-12 col-lg-4 text-start text-lg-center amenities-bg py-5 py-lg-0 align-self-center fw-normal fs-5">
            <div class="dot">{{__('Playa Puerto Vallarta')}} <span class="ms-3 dot">{{__('Club de Golf')}}</span></div>
            <div class="dot">Marina Vallarta <span class="mx-3 dot">{{__('Aeropuerto')}}</span></div>
            <div class="dot">La Terraza di Roma <span class="ms-3 dot">Starbucks</span></div>
            <div class="dot">Viña & Salvatore’s Wine Bar</div>
        </div>

        <div class="col-12 text-center mt-4 d-none d-lg-none">
            <a href="#more-info" class="btn btn-link link-dark"><i class="fa-solid fa-bounce fa-2x fa-chevron-down"></i></a>
        </div>

    </div>


    {{-- Galería --}}
    <div class="row container justify-content-center mb-6 px-0 px-lg-2" id="more-info">

        <div class="col-12 col-lg-3 px-0 d-none d-lg-block">
            <img src="{{asset('img/alberca.jpg')}}" alt="Alberca de Espacio Marina" class="w-100 p-1 object-fit-cover" data-fancybox="gallery" style="height: 25vh;" loading="lazy">
            <img src="{{asset('img/gym.jpeg')}}" alt="Gimnasio de Espacio Marina" class="w-100 p-1 object-fit-cover" data-fancybox="gallery" style="height: 26vh;" loading="lazy">
        </div>

        <div class="col-12 col-lg-6 p-0 p-lg-1 position-relative">

            <a href="#gallery" class="h-100 position-absolute top-0 start-0 btn btn-link link-light d-flex d-lg-none text-decoration-none" aria-label="Anterior">
                <i class="fa-solid fa-2x fa-chevron-left align-self-center"></i>
            </a>

            <img src="{{asset('img/jacuzzi.jpg')}}" alt="Jacuzzi de Espacio Marina" class="w-100 object-fit-cover" data-fancybox="gallery" style="height: 50vh;" loading="lazy">

            <a href="#gallery" class="h-100 position-absolute top-0 end-0 btn btn-link link-light d-flex d-lg-none text-decoration-none" aria-label="Siguiente">
                <i class="fa-solid fa-2x fa-chevron-right align-self-center"></i>
            </a>

        </div>

        <div class="col-12 col-lg-3 px-0 d-none d-lg-block">
            <img src="{{asset('img/terraza-vista-al-mar.jpg')}}" alt="Vista de Espacio Marina" class="w-100 p-1 object-fit-cover" data-fancybox="gallery" style="height: 25vh;" loading="lazy">
            <img src="{{asset('img/interior-room-1.webp')}}" alt="Recámaras de Espacio Marina" class="w-100 p-1 object-fit-cover" data-fancybox="gallery" style="height: 26vh;" loading="lazy">
        </div>

    </div>

    {{-- Amenidades --}}
    <div class="container mb-6">
        <h2>{{__('El lugar ideal que estabas buscando')}}</h2>
        <p class="mb-5">{{__('Invierte en un desarrollo único con un diseño arquitectónico y acabados de primer nivel, en una de las zonas más exclusivas de Puerto Vallarta.')}}</p>

        <div class="row justify-center text-center">

            <div class="col-12 col-lg-2 mb-4 mb-lg-0">
                <div class="row">
                    <img src="{{asset('img/icons/building.png')}}" alt="" class="col-4 col-lg-12 px-3 px-lg-5" loading="lazy">
                    <div class="fw-bold my-3 col-8 col-lg-12 align-self-center">210 {{__('Condominios')}}</div>
                </div>
            </div>

            <div class="col-12 col-lg-2 mb-4 mb-lg-0">
                <div class="row">
                    <img src="{{asset('img/icons/ocean.png')}}" alt="" class="col-4 col-lg-12 px-3 px-lg-5" loading="lazy">
                    <div class="fw-bold my-3 col-8 col-lg-12 align-self-center">{{__('Vista al mar')}}</div>
                </div>
            </div>

            <div class="col-12 col-lg-2 mb-4 mb-lg-0">
                <div class="row">
                    <img src="{{asset('img/icons/golf.png')}}" alt="" class="col-4 col-lg-12 px-3 px-lg-5" loading="lazy">
                    <div class="fw-bold my-3 col-8 col-lg-12 align-self-center">{{__('Vista al campo de golf')}}</div>
                </div>
            </div>

            <div class="col-12 col-lg-2 mb-4 mb-lg-0">
                <div class="row">
                    <img src="{{asset('img/icons/park.png')}}" alt="" class="col-4 col-lg-12 px-3 px-lg-5" loading="lazy">
                    <div class="fw-bold my-3 col-8 col-lg-12 align-self-center">{{__('Parque interno')}}</div>
                </div>
            </div>

            <div class="col-12 col-lg-2 mb-4 mb-lg-0">
                <div class="row">
                    <img src="{{asset('img/icons/green-areas.png')}}" alt="" class="col-4 col-lg-12 px-3 px-lg-5" loading="lazy">
                    <div class="fw-bold my-3 col-8 col-lg-12 align-self-center">{{__('Ámplias áreas verdes')}}</div>
                </div>
            </div>

            <div class="col-12 col-lg-2 mb-4 mb-lg-0">
                <div class="row">
                    <img src="{{asset('img/icons/area.png')}}" alt="" class="col-4 col-lg-12 px-3 px-lg-5" loading="lazy">
                    <div class="fw-bold my-3 col-8 col-lg-12 align-self-center">{{__('11 amenidades en más de 6,900 m2')}}</div>
                </div>
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
                                <img src="{{ $blueprints[0]->getUrl('medium') }}" alt="Tipo de Unidad Espacio Marina" class="w-100" style="object-fit: contain;" loading="lazy">
                            @endisset
                        </li>
            
                    @endforeach                  
                </ul>

            </div>
        </div>

    </section>

    {{-- Master Plan --}}
    <section class="container row justify-content-evenly mb-6 position-relative">

        <div class="col-12 col-lg-6 text-center text-lg-end mb-4">
            <h3 class="fs-0 fw-bold">{{__('Planta de conjunto')}}</h3>
        </div>

        <div class="col-12 col-lg-6 text-center text-lg-start align-self-center mb-4">
            <p class="fs-5">{{__('Vistas increíbles en todos lados, elige la mejor opción que tenemos para ti.')}}</p>
        </div>
        
        <div class="col-1 align-self-center text-center d-none d-lg-block">
            <img src="{{asset('img/icons/ocean.png')}}" alt="" class="w-100 mb-1" loading="lazy">
            <div class="fw-bold">{{__('Vista al mar')}}</div>
        </div>

        <div class="col-12 col-lg-9">
            @if ( app()->getLocale() == 'es' )
                <img src="{{asset('img/master-plan.webp')}}" alt="Master Plan de Espacio Marina & Golf" class="w-100" loading="lazy">
            @else
                <img src="{{asset('img/master-plan-en.webp')}}" alt="Master Plan Espacio Marina & Golf" class="w-100" loading="lazy">
            @endif
        </div>

        <div class="col-1 align-self-center text-center d-none d-lg-block">
            <img src="{{asset('img/icons/golf.png')}}" alt="" class="w-100 mb-1" loading="lazy">
            <div class="fw-bold">{{__('Vista al campo de golf')}}</div>
        </div>

    </section>

    {{-- Ubicación --}}
    <section class="container mb-6">
        <h4 class="fs-2">{{__('Ubicación')}}</h4>
        <p class="mb-4 fs-5">{{__('Explora en el mapa y descubre la excelente ubicación de tu próxima inversión.')}}</p>

        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1061.259475496731!2d-105.26063120297846!3d20.666436713417106!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x842145d623ba3ed5%3A0x859f087aedd0da99!2sEspacio%20Marina%20%26%20Golf!5e0!3m2!1ses-419!2smx!4v1717431581145!5m2!1ses-419!2smx" width="100%" height="600" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
    </section>

    {{-- Formulario de contacto --}}
    @livewire('contact-form')

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
