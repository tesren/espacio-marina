import './bootstrap';

const tooltipTriggerList = document.querySelectorAll('[data-bs-toggle="tooltip"]')
const tooltipList = [...tooltipTriggerList].map(tooltipTriggerEl => new bootstrap.Tooltip(tooltipTriggerEl))

/* document.addEventListener("DOMContentLoaded", function() {
    var whatsappLink = document.getElementById('whatsapp');

    if(whatsappLink){
        var tooltip = new bootstrap.Tooltip(whatsappLink, {
            trigger: 'manual', // Activamos el tooltip manualmente
            placement: 'left' // Colocación del tooltip
        });
        
        // Mostramos el tooltip
        tooltip.show();
    }
    
}); */

Fancybox.bind("[data-fancybox]", {
    // Your custom options
});

let splide_unitTypes = document.getElementById('splide_unitTypes');

if(splide_unitTypes){

    splide_unitTypes = new Splide( '#splide_unitTypes', {
        type   : 'loop',
        perPage: 4,
        rewind : true,
        perMove: 1,
        breakpoints: {
            640: {
                perPage: 1,
            },
        }
    } );
      
    splide_unitTypes.mount();
}

