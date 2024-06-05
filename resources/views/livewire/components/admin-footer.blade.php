<div class="row justify-content-center bg-darkblue py-5 py-lg-3 px-3 w-100 mt-5">

    <div class="col-7 col-lg-1">
        <img src="{{ asset('img/logo-espacio-marina-blanco.webp') }}" alt="Logo de Espacio Marina" class="w-100">
    </div>

    <div class="col-12 col-lg-6 text-center my-4 my-lg-0">
        <i class="fa-regular fa-copyright"></i> Copyright 2024 {{__('Todos los derechos reservados')}} | 
        <a href="{{--route('privacy.policy')--}}" wire:navigate class="link-light fw-light">{{__('Aviso de Privacidad')}}</a>
    </div>

    <div class="col-12 col-lg-2 text-center text-lg-start">
        <a href="https://punto401.com" class="link-light fw-light text-decoration-none">
            {{__('Creado por')}} <img width="70px" src="{{asset('img/logo-punto401.png')}}" alt="Logo de Punto401 Marketing">
        </a>
    </div>

</div>