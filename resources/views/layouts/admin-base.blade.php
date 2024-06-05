<!DOCTYPE html>

<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">

        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100..900;1,100..900&display=swap" rel="stylesheet">

        @yield('titles')

        <link rel="stylesheet" href="{{ asset('css/bootstrap.min.css') }}">

        <link rel="stylesheet" href="{{ asset('css/all.min.css') }}">

        <link rel="stylesheet" href="{{ asset('css/fancybox.min.css') }}">

        <link rel="stylesheet" href="{{ asset('css/splide.min.css') }}">

        <link rel="stylesheet" href="{{ asset('css/espacio-styles-v1.css') }}">

        @include('components.favicon')

        @livewireStyles
    </head>

    <body>
       
        
        <!-- Page Content -->
        <main class="row justify-content-center justify-content-lg-end">

            <div class="col-12 col-lg-1 px-0 fixed-top">
                @livewire('side-bar')
            </div>

            <div class="col-12 col-lg-11 px-0">
                {{ $slot }}

                {{-- Footer --}}
                @include('livewire.components.admin-footer')
            </div>

        </main>

        @vite(['resources/js/app.js'])

    </body>

</html>