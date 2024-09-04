@php
    $contact = request()->query('contact');
@endphp

<footer>

    <div class="row justify-content-evenly bg-darkblue py-5">
    
        <div class="col-8 col-lg-3 col-xxl-2 mb-5 mb-lg-0 text-center">
            <img src="{{ asset('img/logo-espacio-marina-blanco.webp') }}" alt="Logo de Espacio Marina & Golf" class="w-100 mb-3">

            @if ( $contact != 'no')
                <a href="https://www.instagram.com/domus_vallarta/" target="_blank" rel="noopener noreferrer" class="text-decoration-none link-light me-2 fs-5">
                    <i class="fa-brands fa-instagram"></i>
                </a>

                <a href="https://www.facebook.com/DomusVallartaInmobiliaria" target="_blank" rel="noopener noreferrer" class="text-decoration-none link-light me-2 fs-5">
                    <i class="fa-brands fa-square-facebook"></i>
                </a>
            @endif
            
        </div>

        <div class="col-12 col-lg-3 col-xxl-2 mb-5 mb-lg-0 text-center text-lg-start">

            @if ( $contact != 'no')

                <div class="fs-5 fw-semibold mb-3">
                    {{__('Contacto')}}
                </div>

                <a href="mailto:info@domusvallarta.com" class="d-block link-light text-decoration-none mb-2">
                    <i class="fa-solid fa-envelope"></i> info@domusvallarta.com
                </a>
                
                <a href="tel:+523322005523" class="d-block link-light text-decoration-none mb-2">
                    <i class="fa-solid fa-phone"></i> +52 332 200 5523
                </a>

            @endif
            
        </div>

        <div class="col-12 col-lg-3 col-xxl-2 text-center text-lg-start">

            <div class="fs-5 fw-semibold mb-3">
                {{__('Domicilio')}}
            </div>

            <address>
                <i class="fa-solid fa-location-dot"></i> Av. Paseo de la Marina Nte 620, Marina Vallarta, 48335 Puerto Vallarta, Jal.
            </address>

        </div>

    </div>

    <div class="bg-blue p-3 text-center">
        <i class="fa-regular fa-copyright"></i> Copyright 2024 {{__('Todos los derechos reservados')}} | <a href="{{ route('pages.privacy') }}" wire:navigate class="link-light fw-light">{{__('Aviso de Privacidad')}}</a>
        | 
       <a href="https://punto401.com" class="link-light fw-light text-decoration-none">
           {{__('Creado por')}} <img width="70px" src="{{asset('img/logo-punto401.png')}}" alt="Logo de Punto401 Marketing">
       </a>
    </div>
    
</footer>