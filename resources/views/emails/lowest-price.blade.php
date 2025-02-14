<!DOCTYPE html>

<html lang="es">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Nuevo precio mínimo</title>

        <style>
            body{
                font-size: 14px;
            }
        </style>
    </head>

    <body>

        <p>
            Mensaje recibido del sitio web de <strong>Espacio Marina</strong>
        </p>
        
        <p>Se le informa que ahora hay un nuevo precio mínimo de <strong>Espacio Marina</strong></p>

        <p>Precio sin descuento: <strong>${{ number_format($unit->price) }} {{$unit->currency}}</strong></p>

        <p>Unidad: {{$unit->name}} - {{$unit->section->name}}</p>
       
        @if ($unit->lockoff_type != 0 and $unit->lockoff_id != 0)
            <p>Esta unidad tiene lockoff estricto con la unidad {{$unit->lockoff->name}}</p>
            <p>Precio sin descuento: <strong>${{ number_format($unit->lockoff->price) }} {{$unit->lockoff->currency}}</strong></p>
            <p>Total: ${{ number_format( $unit->price + $unit->lockoff->price ) }} {{$unit->currency}}</p>
        @endif
    
    </body>

</html>