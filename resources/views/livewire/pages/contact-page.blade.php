<div>
    {{-- Close your eyes. Count to one. That is how long forever feels. --}}

    @section('titles')
        <title>{{__('Contacto')}} - Espacio Marina & Golf</title>
        <meta name="description" content="{{__('¿Listo para dar el primer paso hacia tu nuevo hogar en Espacio Marina & Golf? Completa nuestro formulario de contacto y un experimentado agente inmobiliario se pondrá en contacto contigo en breve.')}}">
    @endsection

    <section class="position-relative">

        <img src="{{asset('img/sala.jpg')}}" alt="Sala de condominio - Espacio Marina & Golf" class="w-100" style="height: 25vh; object-fit:cover;">

        <div class="fondo-oscuro"></div>

        <div class="row position-absolute top-0 start-0 h-100">

            <div class="col-12 align-self-center text-white">
                <h1 class="fw-semi-bold fs-0 text-center">
                    {{__('Contacto')}}
                </h1>
            </div>

        </div>

    </section>

    <section class="row justify-content-center position-relative mb-6">

        <div class="col-12 col-lg-8 col-xxl-5">
            <h6 class="fs-2 text-brown px-2 mb-0 text-center text-lg-start mt-5">{{__('¿Te gustaría saber más?')}}</h6>
            <p class="fs-6 text-lightbrown px-2 mb-4 text-center text-lg-start">{{__('Completa el formulario para enviarnos un mensaje.')}}</p>
    
            <form wire:submit="save">
                    
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

    </section>
</div>
