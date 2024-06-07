<div>

    {{-- Navegacion movil --}}
    <nav class="d-block d-lg-none navbar navbar-dark bg-darkblue sticky-top">
        <div class="container-fluid">

            <a class="navbar-brand" href="{{route('dashboard.home')}}" wire:navigate>
                <img src="{{asset('img/logo-espacio-marina-blanco.webp')}}" alt="Logo de Espacio Marina" width="100px">
            </a>

            <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar" aria-controls="offcanvasNavbar" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="offcanvas offcanvas-start" tabindex="-1" id="offcanvasNavbar" aria-labelledby="offcanvasNavbarLabel">

                <div class="offcanvas-header bg-darkblue">
                    <div class="offcanvas-title" id="offcanvasNavbarLabel">
                        <img src="{{asset('img/logo-espacio-marina-blanco.webp')}}" alt="Logo de Espacio Marina" width="150px">
                    </div>
                    <button type="button" class="btn-close btn-close-white" data-bs-dismiss="offcanvas" aria-label="Close"></button>
                </div>

                <div class="offcanvas-body bg-darkblue">

                    <ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
                        <li class="nav-item">
                            <a href="{{ route('dashboard.home') }}" class="nav-link @if(Route::currentRouteName() == 'dashboard.home') active @endif" wire:navigate>
                                <i class="fa-solid fa-house-chimney me-2"></i>
                                {{__('Inicio')}}
                            </a>
                        </li>
                    
                        <li>
                            <a href="{{route('dashboard.oceanview')}}" class="nav-link @if(Route::currentRouteName() == 'dashboard.oceanview') active @endif" wire:navigate>
                                <i class="fa-solid fa-building me-2"></i>
                                {{__('Inventario')}}
                            </a>
                        </li>

                        <li>
                            <a href="{{route('dashboard.search')}}" class="nav-link @if(Route::currentRouteName() == 'dashboard.search') active @endif" wire:navigate>
                                <i class="fa-solid fa-magnifying-glass me-2"></i>
                                {{__('Buscar Unidades')}}
                            </a>
                        </li>
                    
                        <li>
                            <a href="{{ route('dashboard.favorites') }}" class="nav-link @if(Route::currentRouteName() == 'dashboard.favorites') active @endif" wire:navigate>
                                <i class="fa-solid fa-heart me-2"></i>
                                {{__('Favoritos')}}
                            </a>
                        </li>
                    
                        <li>
                            <a href="{{route('dashboard.profile')}}" class="nav-link @if(Route::currentRouteName() == 'dashboard.profile') active @endif" wire:navigate>
                                <i class="fa-solid fa-user me-2"></i>
                                {{__('Mi perfil')}}
                            </a>
                        </li>

                        @if ( auth()->user()->role != 'client' )
                            <li>
                                <a href="{{url('/nova')}}" class="nav-link" target="_blank" rel="noopener noreferrer">
                                    <i class="fa-solid fa-arrow-up-right-from-square me-2"></i>
                                    {{__('Panel de administración')}}
                                </a>
                            </li>
                        @endif

                    </ul>

                    <hr>

                    <div class="text-center">
                        
                        <button wire:click="logout" class="btn link-light">
                            <i class="fa-solid fa-right-from-bracket"></i> {{__('Cerrar Sesión')}}
                        </button>
                        
                    </div>

                </div>
            </div>

        </div>
    </nav>


    {{-- Escritorio --}}
    <button class="btn rounded-0 w-100 d-none d-lg-block" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasStart" aria-controls="offcanvasStart" style="height: 100vh; background-image: url('{{asset('img/sidebar-bg.webp')}}'); background-position:center; background-size:cover; background-repeat:no-repeat;">
        <i class="fa-solid text-white fa-2x fa-angles-right"></i>
    </button>

    <div class="offcanvas offcanvas-start d-none d-lg-flex" tabindex="-1" id="offcanvasStart" aria-labelledby="offcanvasStartLabel">

        <div class="offcanvas-header bg-darkblue">
            <div class="offcanvas-title" id="offcanvasStartLabel">
                <img src="{{asset('img/logo-espacio-marina-blanco.webp')}}" alt="Logo de Espacio Marina" class="w-100 px-4 py-3">
            </div>
            <button type="button" class="btn-close btn-close-white" data-bs-dismiss="offcanvas" aria-label="Close"></button>
        </div>

        <div class="offcanvas-body bg-darkblue">
            
            <ul class="nav nav-pills flex-column mb-auto">

                <li class="nav-item">
                    <a href="{{ route('dashboard.home') }}" class="nav-link @if(Route::currentRouteName() == 'dashboard.home') active @endif" wire:navigate>
                        <i class="fa-solid fa-house-chimney me-2"></i>
                        {{__('Inicio')}}
                    </a>
                </li>
            
                <li>
                    <a href="{{route('dashboard.oceanview')}}" class="nav-link @if(Route::currentRouteName() == 'dashboard.oceanview') active @endif" wire:navigate>
                        <i class="fa-solid fa-building me-2"></i>
                        {{__('Inventario')}}
                    </a>
                </li>
            
                <li>
                    <a href="{{route('dashboard.search')}}" class="nav-link @if(Route::currentRouteName() == 'dashboard.search') active @endif" wire:navigate>
                        <i class="fa-solid fa-magnifying-glass me-2"></i>
                        {{__('Buscar Unidades')}}
                    </a>
                </li>

                <li>
                    <a href="{{ route('dashboard.favorites') }}" class="nav-link @if(Route::currentRouteName() == 'dashboard.favorites') active @endif" wire:navigate>
                        <i class="fa-solid fa-heart me-2"></i>
                        {{__('Favoritos')}}
                    </a>
                </li>
            
                <li>
                    <a href="{{route('dashboard.profile')}}" class="nav-link @if(Route::currentRouteName() == 'dashboard.profile') active @endif" wire:navigate>
                        <i class="fa-solid fa-user me-2"></i>
                        {{__('Mi perfil')}}
                    </a>
                </li>

                @if ( auth()->user()->role != 'client' )
                    <li>
                        <a href="{{url('/nova')}}" class="nav-link" target="_blank" rel="noopener noreferrer">
                            <i class="fa-solid fa-arrow-up-right-from-square me-2"></i>
                            {{__('Panel de administración')}}
                        </a>
                    </li>
                @endif
        
            </ul>

            <hr>

            <div class="text-center">
                
                <button wire:click="logout" class="btn link-light">
                    <i class="fa-solid fa-right-from-bracket"></i> {{__('Cerrar Sesión')}}
                </button>
                
            </div>
        </div>
    </div>
    
</div>