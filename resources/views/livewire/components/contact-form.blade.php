<div>
    {{-- Nothing in the world is as soft and yielding as water. --}}

    @php
        $contact = request()->query('contact');
    @endphp

    @if ( $contact != 'no')

        <div class="row" title="Formulario de contacto" id="contact">

            <div class="col-12 col-lg-5 ps-0 d-none d-lg-block">
                <img class="w-100 h-100" src="{{asset('img/jacuzzi.jpg')}}" alt="Espacio Marina & Golf formulario de contacto" style="object-fit: cover;" loading="lazy">
            </div>
        
            <div class="col-12 col-lg-7 align-self-center mt-4 mt-lg-0 px-3 px-lg-5 mb-5">
                <h6 class="fs-2 text-brown px-2 mb-0 text-center text-lg-start mt-5">{{__('¿Te gustaría saber más?')}}</h6>
                <p class="fs-6 text-lightbrown px-2 mb-4 text-center text-lg-start">{{__('Completa el formulario para enviarnos un mensaje.')}}</p>

                <form wire:submit="save" id="lead_form">
                        
                    <div class="row">
            
                        <div class="col-12">
                            <label for="full_name">{{__('Nombre')}}</label>
                            <input type="text" wire:model="full_name" id="full_name" class="form-control mb-3 @error('full_name') is-invalid @enderror" required>
                        </div>
            
                        <x-honeypot/>
            
                        <div class="col-12">
                            <label for="email">{{__('Correo')}}</label>
                            <input type="email" wire:model="email" id="email" class="form-control mb-3" required>
                        </div>
            
                        <div class="col-12">
                            <label for="phone">{{__('Teléfono')}}</label>
                            <input type="tel" wire:model="phone" id="phone" class="form-control mb-3">
                        </div>
            
                        <div class="col-12">
                            <label for="phone">{{__('Mensaje')}}</label>
                            <textarea wire:model="message" id="message" cols="30" required class="form-control mb-4" rows="3"></textarea>
                        </div>
            
                        <input type="hidden" wire:model="url" id="url" value="{{ request()->fullUrl() }}">
            
                        <div class="col-12">
                            <button type="submit" class="btn btn-blue rounded-0 shadow-4 w-100" @if(session('message')) disabled @endif>
                                {{__('Enviar')}}
                            </button>
                        </div>
            
                    </div>
            
                </form>
            
                {{-- Mensaje de éxito --}}
                @if (session('message'))
                    <div class="text-white rounded-2 p-3 bg-success fw-semibold fs-5 text-center mt-3 mb-4">
                        <i class="fa-regular fa-circle-check"></i> {{__(session('message'))}}
                    </div>
                @endif

                <div wire:loading class="text-center fs-5 my-3 text-warning"> 
                    <i class="fa-solid fa-spin fa-spinner"></i> {{__('Enviando, por favor espere')}}
                </div>

            </div>
        </div>

    @endif

    @script
        <script>
            $wire.on('form-google-conversion', () => {
                
                window.dataLayer = window.dataLayer || [];
                function gtag(){dataLayer.push(arguments);}

                gtag('event', 'conversion', {
                    'send_to': 'AW-996157886/BKN_CMrqyegZEL7TgNsD',
                    'value': 1.0,
                    'currency': 'MXN'
                });

            });
        </script>
    @endscript

</div>