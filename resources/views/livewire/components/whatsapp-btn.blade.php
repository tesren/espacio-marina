@php
    $contact = request()->query('contact');
@endphp

@if ( $contact != 'no')
    {{-- Botón de WhatsApp --}}
    <a id="whatsapp" class="shadow d-none d-lg-block" href="https://wa.me/5213322005523?text={{ urlencode(__('Hola, vengo del sitio web de Espacio Marina')) }}" target="_blank" rel="noopener noreferrer"
        class="text-decoration-none position-fixed d-flex justify-content-center shadow-4 rounded-circle text-white z-3 shadow-3" 
        data-bs-toggle="tooltip" data-bs-placement="left" data-bs-title="{{__('Envíanos un mensaje')}}">

        <i class="fa-brands align-self-center fa-whatsapp"></i>
    </a>

    <div class="sticky-bottom px-0 py-2 d-block d-lg-none bg-blue border-top border-light">
        <div class="row">

            <div class="col-7">
                <div class="fw-light" style="font-size: 11px;">
                    WhatsApp
                </div>
                <div class="fs-6">{{__('Envíanos un mensaje')}}</div>
            </div>

            <div class="col-5 align-self-center">
                <a class="btn btn-green w-100 fs-6" href="https://wa.me/5213322005523?text={{__("Hola, vengo del sitio web de Espacio Marina")}}" target="_blank" rel="noopener noreferrer">
                    <i class="fa-brands fa-whatsapp"></i> WhatsApp
                </a>
            </div>

        </div>
    </div>
@endif