<!DOCTYPE html>

<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">

        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100..900;1,100..900&display=swap" rel="stylesheet">

        <!-- Google Tag Manager -->
        <script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
        new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
        j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
        'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
        })(window,document,'script','dataLayer','GTM-TGC958JV');</script>
        <!-- End Google Tag Manager -->

        @yield('titles')

        <link rel="stylesheet" href="{{ asset('css/bootstrap.min.css') }}">

        <link rel="stylesheet" href="{{ asset('css/all.min.css') }}">

        <link rel="stylesheet" href="{{ asset('css/fancybox.min.css') }}">

        <link rel="stylesheet" href="{{ asset('css/splide.min.css') }}">

        <link rel="stylesheet" href="{{ asset('css/public-styles-v1.css') }}">

        @include('components.favicon')

        @livewireStyles
        
    </head>

    <body>
       
        <!-- Google Tag Manager (noscript) -->
        <noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-TGC958JV"
        height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
        <!-- End Google Tag Manager (noscript) -->

        <!-- Page Content -->
        <main class="position-relative">
            <livewire:nav-bar />

            <div style="margin-top: 78px;">{{ $slot }}</div>
        </main>


        @include('livewire.components.whatsapp-btn')

        {{-- Footer --}}
        @include('livewire.components.public-footer')


        @vite(['resources/js/app.js'])

    </body>

</html>