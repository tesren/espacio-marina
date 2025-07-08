<?php

namespace App\Observers;

use App\Models\Unit;
use App\Mail\NewLowestPrice;
use Illuminate\Support\Facades\Http;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Cache;

class UnitObserver
{
    private $n8nUser;
    private $n8nPass;

    public function __construct()
    {
        $this->n8nUser = env('N8N_AUTH_USER');
        $this->n8nPass = env('N8N_AUTH_PASS');
    }


    /**
     * Handle the Unit "created" event.
     */
    public function created(Unit $unit): void
    {
        //SUPABASE
        
        $MapUrl = 'https://maps.app.goo.gl/jW2hXoWaQzJLF8Rd6';


        $text = "Condominio {$unit->name}, {$unit->section->name}: {$unit->status} en Espacio Marina & Golf. ";

        if ($unit->unitType->bedrooms == 0) {
            $text .= "Es un Estudio";
        } else {
            $text .= "Tiene {$unit->unitType->bedrooms} recámara(s)";
        }
        $text .= " con {$unit->unitType->bathrooms} baño(s) completo(s), ";

        $text .= " en el piso número: {$unit->floor}, con {$unit->unitType->parking_spaces} cajón de estacionamiento, ";

        if($unit->lockoff_id != 0){
            $text .= "y opción a lock-off con la unidad {$unit->lockoff->name}. ";

        }          
        
        $text .= "área construida de {$unit->const_total} m². ";
        
        $text .= 'Espacio Marina & Golf cuenta con amenidades comunes como: Parque interno, gimnasio, alberca, áreas verdes, jacuzzi, lobby, área para mascotas, asoleaderos, kids club y mini-shop. ';

        $text .= "Precio: $" . number_format($unit->price, 2) . " {$unit->currency}. ";
        $text .= "Ubicado dentro de Espacio Marina & Golf, en Avenida Paseo de la Marina Norte 620, Marina Vallarta, Puerto Vallarta, Jalisco. ";
        $text .= "Ver ubicación: {$MapUrl}. ";
        $text .= "Ver más detalles en el sitio web: " . route('es.pages.unit', ['name' => $unit->name]). " ";
        $text .= " Invierte en este desarrollo inmobiliario único, con un diseño arquitectónico y acabados de primera clase, a solo 400 metros de la playa y a 5 minutos del aeropuerto. .  ";
        $text .= "Fecha de creación: {$unit->created_at}. Última actualización: {$unit->updated_at}.";

        $lineCount = substr_count($text, "\n");


        Http::withBasicAuth($this->n8nUser, $this->n8nPass)->post('https://cloud.punto401.com/webhook/f2b447a5-8042-432f-82d6-199258fcf582', [
            'unit_id' => $unit->id,
            'operation_type' => 'insert',
            'property_type' => 'unit',
            'development' => 'espacio_marina',
            'unit_name' => $unit->name,
            'texto' => $text,
            'metadata' => [
                'doc_id' => 'unit_' . $unit->id,
                'source' => 'synthetic',
                'version' => 'v1',
                'blobType' => 'text/plain',
                'doc_name' => $unit->name,
                'doc_type' => 'application/json',
                'doc_created' => $unit->created_at,
                'doc_modified' => $unit->updated_at,
                'loc' => [
                    'lines' => [
                        'from' => 1,
                        'to' => $lineCount
                    ]
                ]
            ],
        ]);
    }

    public function updated(Unit $unit): void
    {
        // Recuperar el último precio más bajo almacenado en caché
        $cachedLowest = Cache::get('lowest_priced_unit');

        // Limpiar el cache previo antes de recalcular
        Cache::forget('lowest_priced_unit');

        // Obtener todas las unidades disponibles ordenadas por precio
        $availableUnits = Unit::where('status', 'Disponible')->orderBy('price', 'asc')->get();

        // Determinar la unidad con el precio más bajo
        $lowestPricedUnit = $availableUnits->first();

        if (!$lowestPricedUnit) {
            // Si no hay unidades disponibles, no hacemos nada
            return;
        }

        // Actualizar la unidad más barata en caché
        Cache::forever('lowest_priced_unit', [
            'id' => $lowestPricedUnit->id,
            'price' => $lowestPricedUnit->price,
        ]);

        if( isset($cachedLowest) ){

            // Comparar con el valor en caché para evitar notificaciones repetidas
            if ( $cachedLowest['id'] != $lowestPricedUnit->id or $lowestPricedUnit->price != $cachedLowest['price']) {

                // Si hay un cambio en la unidad más barata, notificar
                $email = Mail::to('erick@punto401.com')->cc('michelena@punto401.com');
                $email->send(new NewLowestPrice($lowestPricedUnit));

            }

        }

        //SUPABASE
        
        $MapUrl = 'https://maps.app.goo.gl/jW2hXoWaQzJLF8Rd6';


        $text = "Condominio {$unit->name}, {$unit->section->name}: {$unit->status} en Espacio Marina & Golf. ";

        if ($unit->unitType->bedrooms == 0) {
            $text .= "Es un Estudio";
        } else {
            $text .= "Tiene {$unit->unitType->bedrooms} recámara(s)";
        }
        $text .= " con {$unit->unitType->bathrooms} baño(s) completo(s), ";

        $text .= " en el piso número: {$unit->floor}, con {$unit->unitType->parking_spaces} cajón de estacionamiento, ";

        if($unit->lockoff_id != 0){
            $text .= "y opción a lock-off con la unidad {$unit->lockoff->name}. ";

        }          
        
        $text .= "área construida de {$unit->const_total} m². ";
        
        $text .= 'Espacio Marina & Golf cuenta con amenidades comunes como: Parque interno, gimnasio, alberca, áreas verdes, jacuzzi, lobby, área para mascotas, asoleaderos, kids club y mini-shop. ';

        $text .= "Precio: $" . number_format($unit->price, 2) . " {$unit->currency}. ";
        $text .= "Ubicado dentro de Espacio Marina & Golf, en Avenida Paseo de la Marina Norte 620, Marina Vallarta, Puerto Vallarta, Jalisco. ";
        $text .= "Ver ubicación: {$MapUrl}. ";
        $text .= "Ver más detalles en el sitio web: " . route('es.pages.unit', ['name' => $unit->name]). " ";
        $text .= " Invierte en este desarrollo inmobiliario único, con un diseño arquitectónico y acabados de primera clase, a solo 400 metros de la playa y a 5 minutos del aeropuerto. .  ";
        $text .= "Fecha de creación: {$unit->created_at}. Última actualización: {$unit->updated_at}.";

        $lineCount = substr_count($text, "\n");


        Http::withBasicAuth($this->n8nUser, $this->n8nPass)->post('https://cloud.punto401.com/webhook/f2b447a5-8042-432f-82d6-199258fcf582', [
            'unit_id' => $unit->id,
            'operation_type' => 'update',
            'property_type' => 'unit',
            'development' => 'espacio_marina',
            'unit_name' => $unit->name,
            'texto' => $text,
            'metadata' => [
                'doc_id' => 'unit_' . $unit->id,
                'source' => 'synthetic',
                'version' => 'v1',
                'blobType' => 'text/plain',
                'doc_name' => $unit->name,
                'doc_type' => 'application/json',
                'doc_created' => $unit->created_at,
                'doc_modified' => $unit->updated_at,
                'loc' => [
                    'lines' => [
                        'from' => 1,
                        'to' => $lineCount
                    ]
                ]
            ],
        ]);
        
    }

    /**
     * Handle the Unit "deleted" event.
     */
    public function deleted(Unit $unit): void
    {
          //SUPABASE
        
          $MapUrl = 'https://maps.app.goo.gl/jW2hXoWaQzJLF8Rd6';


          $text = "Condominio {$unit->name}, no disponible, {$unit->status} en Espacio Marina & Golf. ";
  
          if ($unit->unitType->bedrooms == 0) {
              $text .= "Es un Estudio";
          } else {
              $text .= "Tiene {$unit->unitType->bedrooms} recámara(s)";
          }
          $text .= " con {$unit->unitType->bathrooms} baño(s) completo(s), ";
  
          $text .= " en el piso número: {$unit->floor}, con {$unit->unitType->parking_spaces} cajón de estacionamiento, ";
  
          if($unit->lockoff_id != 0){
              $text .= "y opción a lock-off con la unidad {$unit->lockoff->name}. ";
  
          }          
          
          $text .= "área construida de {$unit->const_total} m². ";
          
          $text .= 'Espacio Marina & Golf cuenta con amenidades comunes como: Parque interno, gimnasio, alberca, áreas verdes, jacuzzi, lobby, área para mascotas, asoleaderos, kids club y mini-shop. ';
  
          $text .= "Precio: $" . number_format($unit->price, 2) . " {$unit->currency}. ";
          $text .= "Ubicado dentro de Espacio Marina & Golf, en Avenida Paseo de la Marina Norte 620, Marina Vallarta, Puerto Vallarta, Jalisco. ";
          $text .= "Ver ubicación: {$MapUrl}. ";
          $text .= "Ver más detalles en el sitio web: " . route('es.pages.unit', ['name' => $unit->name]). " ";
          $text .= " Invierte en este desarrollo inmobiliario único, con un diseño arquitectónico y acabados de primera clase, a solo 400 metros de la playa y a 5 minutos del aeropuerto. .  ";
          $text .= "Fecha de creación: {$unit->created_at}. Última actualización: {$unit->updated_at}.";
  
          $lineCount = substr_count($text, "\n");
  
  
          Http::withBasicAuth($this->n8nUser, $this->n8nPass)->post('https://cloud.punto401.com/webhook/f2b447a5-8042-432f-82d6-199258fcf582', [
              'unit_id' => $unit->id,
              'operation_type' => 'update',
              'property_type' => 'unit',
              'development' => 'espacio_marina',
              'unit_name' => $unit->name,
              'texto' => $text,
              'metadata' => [
                  'doc_id' => 'unit_' . $unit->id,
                  'source' => 'synthetic',
                  'version' => 'v1',
                  'blobType' => 'text/plain',
                  'doc_name' => $unit->name,
                  'doc_type' => 'application/json',
                  'doc_created' => $unit->created_at,
                  'doc_modified' => $unit->updated_at,
                  'loc' => [
                      'lines' => [
                          'from' => 1,
                          'to' => $lineCount
                      ]
                  ]
              ],
          ]);
    }

    /**
     * Handle the Unit "restored" event.
     */
    public function restored(Unit $unit): void
    {
        //
    }

    /**
     * Handle the Unit "force deleted" event.
     */
    public function forceDeleted(Unit $unit): void
    {
        //
    }
}
