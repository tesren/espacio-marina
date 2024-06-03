<div>

    {{-- Navegacion movil --}}
    <nav class="d-block d-lg-none navbar bg-body-tertiary fixed-top">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">Offcanvas navbar</a>

            <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar" aria-controls="offcanvasNavbar" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="offcanvas offcanvas-start" tabindex="-1" id="offcanvasNavbar" aria-labelledby="offcanvasNavbarLabel">

                <div class="offcanvas-header">
                    <h5 class="offcanvas-title" id="offcanvasNavbarLabel">Offcanvas</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
                </div>

                <div class="offcanvas-body">

                    <ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="#">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Link</a>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            Dropdown
                            </a>
                            <ul class="dropdown-menu">
                            <li><a class="dropdown-item" href="#">Action</a></li>
                            <li><a class="dropdown-item" href="#">Another action</a></li>
                            <li>
                                <hr class="dropdown-divider">
                            </li>
                            <li><a class="dropdown-item" href="#">Something else here</a></li>
                            </ul>
                        </li>
                    </ul>

                </div>
            </div>

        </div>
    </nav>


    {{-- Escritorio --}}
    <button class="btn rounded-0 w-100" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasStart" aria-controls="offcanvasStart" style="height: 100vh; background-image: url('{{asset('img/sidebar-bg.webp')}}'); background-position:center; background-size:cover; background-repeat:no-repeat;">
        <i class="fa-solid text-white fa-2x fa-angles-right"></i>
    </button>

    <div class="offcanvas offcanvas-start" tabindex="-1" id="offcanvasStart" aria-labelledby="offcanvasStartLabel">

        <div class="offcanvas-header bg-darkblue">
            <div class="offcanvas-title" id="offcanvasStartLabel">
                <img src="{{asset('img/logo-espacio-marina-blanco.webp')}}" alt="Logo de Espacio Marina" class="w-100 px-4 py-3">
            </div>
            <button type="button" class="btn-close btn-close-white" data-bs-dismiss="offcanvas" aria-label="Close"></button>
        </div>

        <div class="offcanvas-body bg-darkblue">
            
            <ul class="nav nav-pills flex-column mb-auto">

                <li class="nav-item">
                    <a href="{{ route('dashboard.home') }}" class="nav-link @if(Route::currentRouteName() == 'dashboard.home') active @endif align-self-center" >
                        <i class="fa-solid fa-house-chimney me-2"></i>
                        {{__('Inicio')}}
                    </a>
                </li>
            
                <li>
                    <a href="{{route('dashboard.inventory')}}" class="nav-link @if(Route::currentRouteName() == 'dashboard.inventory') active @endif">
                        <i class="fa-solid fa-building me-2"></i>
                        {{__('Inventario')}}
                    </a>
                </li>
            
                {{-- <li>
                    <a href="{{ route('dashboard.saved.units', ['id'=>auth()->user()->id]) }}" class="nav-link">
                        <i class="fa-solid fa-heart me-2"></i>
                        {{__('Favoritos')}}
                    </a>
                </li>
            
                <li>
                    <a href="{{route('dashboard.profile')}}" class="nav-link">
                        <i class="fa-solid fa-user me-2"></i>
                        {{__('Mi perfil')}}
                    </a>
                </li> --}}
        
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