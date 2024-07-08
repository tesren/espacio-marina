<div>
    
    @section('titles')
        <title>{{__('Avances de Obra')}} - Espacio Marina & Golf</title>
        <meta name="description" content="{{__('Avances de obra mensuales de Espacio Marina & Golf en Puerto Vallarta. Nuestra página de avances de obra te ofrece una visión detallada de la evolución de esta espectacular torre de condominios con vista al mar y al campo de folg.')}}">
    @endsection

    {{-- Do your work, then step back. --}}
    <section class="position-relative mb-6">

        <img src="{{asset('/img/alberca.jpg')}}" alt="Áreas comunes de Espacio Marina & Golf" class="w-100 object-fit-cover" style="height: 25vh; object-position:bottom;">

        <div class="fondo-oscuro"></div>

        <div class="row position-absolute top-0 start-0 h-100">

            <div class="col-12 align-self-center text-white">
                <h1 class="fw-semi-bold fs-0 text-center">
                    {{__('Avances de Obra')}}
                </h1>
            </div>

        </div>

    </section>


    @if ( $const_updates->isNotEmpty() )
    
        <div class="row justify-content-center mb-6 position-relative">

            @foreach ($const_updates as $update)
                <div class="card rounded-0 col-11 col-lg-8 col-xxl-7 mb-5 p-0 shadow-5">
                    
                    @php
                        $portrait = asset('media/'.$update->portrait_path);
                        $date = __(date_format($update->date, 'F')).' '.date_format($update->date, 'Y');
                        $images = $update->getMedia('gallery_construction');
                    @endphp

                    <div class="position-relative">
                        <img src="{{$portrait}}" class="w-100" alt="Avance de Obra Espacio Marina & Golf - {{$date}}" style="max-height: 470px; object-fit:cover;">
                        <div class="row position-absolute top-0 start-0 justify-content-center h-100">
                            <div class="col-12 text-center align-self-center">
                                <a href="#construction-{{$update->id}}-1"  class="link-light" aria-label="Ver avance de obra de {{$date}}"><i class="fa-solid fa-4x fa-play"></i></a>
                            </div>
                        </div>
                    </div>

                    <div class="card-body bg-darkblue d-flex position-relative overflow-hidden">

                        <img class="me-5 align-self-center" src="{{asset('img/logo-espacio-marina-blanco.webp')}}" alt="Logo de Espacio Marina & Golf" width="150px">            
                        <h2 class="mb-0 lh-1 fw-light">{{$date}} <br> <span class="fs-5">{{__('Avance de Obra')}}</span> </h2>
                        
                    </div>

                    @if ($update->video_link)
                        <a href="{{$update->video_link}}" data-fancybox="construction-{{$update->id}}" class="d-none">{{__('Video de avance de obra')}} Espacio Marina & Golf - {{$date}}</a>
                    @endif

                    @foreach ($images as $image)
                        <img src="{{$image->getUrl('large')}}" alt="Avance de Obra Espacio Marina & Golf - {{$date}}" class="w-100 d-none" data-fancybox="construction-{{$update->id}}">
                    @endforeach
                      
                </div>
            @endforeach
        </div>

        {{-- $const_updates->links() --}}
        
    @endif

    {{-- Formulario de contacto --}}
    @livewire('contact-form')

    @script
        <script>
            // This Javascript will get executed every time this component is loaded onto the page...
            Fancybox.bind("[data-fancybox]", {
                Hash: true,
            });
        </script>
    @endscript

</div>
