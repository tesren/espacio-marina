import './bootstrap';

const tooltipTriggerList = document.querySelectorAll('[data-bs-toggle="tooltip"]')
const tooltipList = [...tooltipTriggerList].map(tooltipTriggerEl => new bootstrap.Tooltip(tooltipTriggerEl))

document.addEventListener("DOMContentLoaded", function() {
    var whatsappLink = document.getElementById('whatsapp');

    if(whatsappLink){
        var tooltip = new bootstrap.Tooltip(whatsappLink, {
            trigger: 'manual', // Activamos el tooltip manualmente
            placement: 'left' // Colocación del tooltip
        });
        
        // Mostramos el tooltip
        tooltip.show();
    }
    
});

document.addEventListener('livewire:init', () => {
    Livewire.on('change-lang', (event) => {
        
        const bodyElement = document.querySelector('body');

            // Verifica si el elemento existe
            if (bodyElement) {
                // Elimina el elemento
                bodyElement.removeAttribute('style');
            }

    });
 });