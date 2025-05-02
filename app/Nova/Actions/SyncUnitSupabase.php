<?php

namespace App\Nova\Actions;

use App\Models\Unit;
use Illuminate\Bus\Queueable;
use Laravel\Nova\Fields\Select;
use Laravel\Nova\Actions\Action;
use Illuminate\Support\Collection;
use Illuminate\Support\Facades\Http;
use Laravel\Nova\Fields\ActionFields;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Contracts\Queue\ShouldQueue;
use Laravel\Nova\Http\Requests\NovaRequest;

class SyncUnitSupabase extends Action
{
    use InteractsWithQueue, Queueable;

    /**
     * Perform the action on the given models.
     *
     * @param  \Laravel\Nova\Fields\ActionFields  $fields
     * @param  \Illuminate\Support\Collection  $models
     * @return mixed
     */
    public function handle(ActionFields $fields, Collection $models)
    {
        
        foreach($models as $model){

            $unit = Unit::find($model->id);
            
            // Crear el enlace de Google Maps
            $MapUrl = 'https://es.foursquare.com/v/espacio-marina--golf/663b976b4b4967343a860498';


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
            $text .= "Ver más detalles en el sitio web: " . route('es.pages.unit', ['name' => $unit->name]);
            $text .= "Invierte en este desarrollo inmobiliario único, con un diseño arquitectónico y acabados de primera clase, a solo 400 metros de la playa y a 5 minutos del aeropuerto. .  ";
            $text .= "Fecha de creación: {$unit->created_at}. Última actualización: {$unit->updated_at}.";

            $lineCount = substr_count($text, "\n");

            $n8n_user = env('N8N_AUTH_USER');
            $n8n_pass = env('N8N_AUTH_PASS');

            Http::withBasicAuth($n8n_user, $n8n_pass)->post('https://n8n.punto401.com/webhook/f2b447a5-8042-432f-82d6-199258fcf582', [
                'unit_id' => $unit->id,
                'operation_type' => $fields->operation_type,
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

    }

    /**
     * Get the fields available on the action.
     *
     * @param  \Laravel\Nova\Http\Requests\NovaRequest  $request
     * @return array
     */
    public function fields(NovaRequest $request)
    {
        return [
            Select::make('Tipo de operación', 'operation_type')
                ->options([
                    'insert' => 'Insertar',
                    'update' => 'Actualizar',
                ])
                ->displayUsingLabels()
                ->rules('required')
                ->help('Tipo de operación a realizar en Supabase'),
        ];
    }

    /**
     * Get the displayable name of the action.
     *
     * @return string
     */
    public function name()
    {
        return __('Sincronizar con Supabase');
    }
}
