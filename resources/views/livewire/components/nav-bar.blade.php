<div>
    {{-- The best athlete wants his opponent at his best. --}}

    <nav class="navbar navbar-light bg-white fixed-top navbar-expand-xl shadow" style="z-index: 1081;">
        <div class="container-fluid">

            <a class="navbar-brand ms-0 ms-lg-5" href="{{route('pages.home')}}" wire:navigate>
                <img src="{{asset('/img/logo-espacio-marina-azul.webp')}}" alt="Logo de Espacio Marina" width="130px">
            </a>

            <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar" aria-controls="offcanvasNavbar" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="offcanvas offcanvas-start" tabindex="-1" id="offcanvasNavbar" aria-labelledby="offcanvasNavbarLabel">

                <div class="offcanvas-header">
                    <div class="offcanvas-title" id="offcanvasNavbarLabel">
                        <img src="{{asset('/img/logo-espacio-marina-azul.webp')}}" alt="Logo de Espacio Marina" width="200px">
                    </div>
                    <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
                </div>

                <div class="offcanvas-body bg-white">

                    <ul class="navbar-nav justify-content-center flex-grow-1 pe-3 fs-5">

                        <li class="nav-item me-0 me-lg-4 d-block d-lg-none">
                            <a href="{{ route('pages.home') }}" class="nav-link @if(Route::currentRouteName() == 'pages.home') active @endif" wire:navigate>
                                <i class="fa-solid fa-house-chimney me-2"></i>
                                {{__('Inicio')}}
                            </a>
                        </li>
                    
                        <li class="nav-item me-0 me-lg-4">
                            <a href="{{route('pages.ocean')}}" class="nav-link @if(Route::currentRouteName() == 'pages.ocean') active @endif" wire:navigate>
                                <i class="fa-solid fa-building me-2 d-inline d-lg-none"></i>
                                {{__('Inventario')}}
                            </a>
                        </li>

                        <li class="nav-item me-0 me-lg-4">
                            <a href="{{route('pages.search')}}" class="nav-link @if(Route::currentRouteName() == 'pages.search') active @endif" wire:navigate>
                                <i class="fa-solid fa-magnifying-glass me-2 d-inline d-lg-none"></i>
                                {{__('Buscar Unidades')}}
                            </a>
                        </li>

                        @php
                            $const_updates = App\Models\ConstructionUpdate::all();
                        @endphp

                        @if ( count($const_updates) > 0)
                            <li class="nav-item me-0 me-lg-4">
                                <a href="{{route('pages.construction')}}" class="nav-link @if(Route::currentRouteName() == 'pages.construction') active @endif" wire:navigate>
                                    <i class="fa-solid fa-person-digging me-2 d-inline d-lg-none"></i>
                                    {{__('Avances de Obra')}}
                                </a>
                            </li>
                        @endif 
                        
                        <li class="nav-item">
                            <a href="{{ route('pages.contact') }}" class="nav-link @if(Route::currentRouteName() == 'pages.contact') active @endif" wire:navigate>
                                <i class="fa-solid fa-envelope me-2 d-inline d-lg-none"></i>
                                {{__('Contacto')}}
                            </a>
                        </li>

                        <li class="nav-item dropdown d-block d-lg-none">

                            <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                <i class="fa-solid fa-user me-2"></i>{{__('Iniciar Sesión')}}
                            </a>

                            <ul class="dropdown-menu bg-darkblue">
                                <li>
                                    <a class="dropdown-item text-white" href="{{ url('/login') }}" wire:navigate>{{__('Iniciar Sesión')}}</a>
                                </li>
                                <li>
                                    <a class="dropdown-item text-white" href="{{ url('/register') }}" wire:navigate>{{__('Crear Cuenta')}}</a>
                                </li>
                            </ul>

                        </li>
                        
                    </ul>

                    <hr class="d-block d-lg-none my-4">

                    {{-- Solo en escritorio --}}
                    <div class="text-center align-self-center justify-content-center d-none d-lg-flex">
                        
                        <div class="nav-item dropdown fs-5 me-4">
                            <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                <i class="fa-solid fa-user"></i>
                            </a>
                            
                            <ul class="dropdown-menu dropdown-menu-end bg-darkblue">
                                <li>
                                    <a class="dropdown-item text-white" href="{{ url('/login') }}" wire:navigate>{{__('Iniciar Sesión')}}</a>
                                </li>

                                <li>
                                    <a class="dropdown-item text-white" href="{{ url('/register') }}" wire:navigate>{{__('Crear Cuenta')}}</a>
                                </li>
                            </ul>
                        </div>

                        @php
                            $route = Route::currentRouteName();
                            $lang = app()->getLocale();
                        @endphp

                        @if ($lang == 'en')
                            @if($route != 'en.pages.unit' and $route != 'es.livewire.update')

                                <a href="{{$url = route($route, request()->query(), true, 'es')}}" wire:navigate class="d-block align-self-center me-3" title="{{__('Cambiar idioma')}}">
                                    <img src="{{ asset('img/change-lang-btn.webp') }}" alt="{{__('Cambiar idioma')}}" width="30px">
                                </a>
                            @else

                                <a class="d-block align-self-center me-3" title="{{__('Cambiar idioma')}}" wire:navigate href="{{$url = route('pages.unit', ['name'=>$unit_name, 'utm_campaign' => request()->query('utm_campaign'), 'utm_source' => request()->query('utm_source'), 'utm_medium' => request()->query('utm_medium')], true, 'es');}}">
                                    <img src="{{ asset('img/change-lang-btn.webp') }}" alt="{{__('Cambiar idioma')}}" width="30px">
                                </a>

                            @endif
                        
                        @else
                            @if($route != 'es.pages.unit' and $route != 'es.livewire.update')

                                <a href="{{$url = route($route, request()->query(), true, 'en')}}" wire:navigate class="d-block align-self-center me-3" title="{{__('Cambiar idioma')}}">
                                    <img src="{{ asset('img/change-lang-btn.webp') }}" alt="{{__('Cambiar idioma ')}} " width="30px">
                                </a>

                            @else
                                
                                <a class="d-block align-self-center me-3" title="{{__('Cambiar idioma')}}" wire:navigate href="{{$url = route('pages.unit', ['name'=>$unit_name, 'utm_campaign' => request()->query('utm_campaign'), 'utm_source' => request()->query('utm_source'), 'utm_medium' => request()->query('utm_medium')], true, 'en');}}">
                                    <img src="{{ asset('img/change-lang-btn.webp') }}" alt="{{__('Cambiar idioma')}}" width="30px">
                                </a>

                            @endif
                        @endif

                    </div>

                    {{-- Redes sociales solo en móvil --}}
                    <div class="text-center fs-4 d-block d-lg-none">
                        <a href="https://www.instagram.com/domus_vallarta/" target="_blank" rel="noopener noreferrer" class="text-decoration-none text-darkblue me-2">
                            <i class="fa-brands fa-instagram"></i>
                        </a>
            
                        <a href="https://www.facebook.com/DomusVallartaInmobiliaria" target="_blank" rel="noopener noreferrer" class="text-decoration-none text-darkblue me-2">
                            <i class="fa-brands fa-square-facebook"></i>
                        </a>
                    </div>
                </div>
            </div>

        </div>
    </nav>

</div>