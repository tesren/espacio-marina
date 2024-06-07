<div>
    {{-- Do your work, then step back. --}}
    @section('titles')
        <title>{{__('Mi Perfil')}} - Espacio Marina & Golf</title>
    @endsection

    <div class="position-relative mb-5">
        <img src="{{ asset('img/jacuzzi.jpg') }}" alt="Alberca Espacio Marina & Golf" class="w-100 object-fit-cover" style="height: 20vh;">

        <div class="fondo-oscuro"></div>

        <div class="row justify-content-center position-absolute start-0 top-0 h-100 z-3">

            <div class="col-12 text-center align-self-center">
                <h1 class="fs-0 text-white">{{__('Mi Perfil')}}</h1>
            </div>

        </div>

    </div>

    <div class="row justify-content-center my-6" style="min-height: 53vh;">

        <div class="col-12 col-lg-9 shadow p-4 rounded-3 align-self-start">
            <div class="row">
                <div class="col-8 col-lg-4 align-self-center">
                    @php
                        $user = auth()->user();
                        $url = Gravatar::fallback('https://www.gravatar.com/avatar/de7554e3560de602155ce77b2eef85cb?s=300')->get($user->email, ['size'=>500]);
                    @endphp
                    <img src="{{$url}}" alt="Profile picture" class="w-100 rounded-circle">
                </div>
        
                <div class="col-12 col-lg-8">
        
                    <h1>{{__('Mis datos')}}</h1>
                    <div class="text-secondary">{{$user->email}}</div>
                    <p>{{__('Aquí puedes ver y modificar tus datos personales')}}</p>
        
                    <form wire:submit="updateProfile">
        
                        <label for="user_name">{{__('Nombre')}}</label>
                        <input type="text" class="contact-input mb-3" wire:model="user_name">
        
                        <label for="user_phone">{{__('Teléfono')}}</label>
                        <input type="text" class="contact-input mb-3" wire:model="user_phone">
        
                        <button type="submit" class="btn btn-blue d-inline">
                            <i class="fa-solid fa-spin fa-circle-notch" wire:loading></i>
                            {{__('Guardar Cambios')}}
                        </button>

                        @if (session('message'))
                            <div class="d-inline text-success fw-bold ms-1">
                                <i class="fa-solid fa-check"></i> {{__( session('message') )}}
                            </div>
                        @endif
                        

                    </form>
        
                </div>
            </div>
        </div>

    </div>

</div>
