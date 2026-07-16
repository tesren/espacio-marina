<?php

namespace App\Nova;

use App\Nova\Actions\RevokeApiToken;
use Illuminate\Http\Request;
use Laravel\Nova\Fields\BelongsTo;
use Laravel\Nova\Fields\DateTime;
use Laravel\Nova\Fields\ID;
use Laravel\Nova\Fields\Number;
use Laravel\Nova\Fields\Text;
use Laravel\Nova\Http\Requests\NovaRequest;

class ApiRequestLog extends Resource
{
    public static $model = \App\Models\ApiRequestLog::class;

    public static $title = 'path';

    public static $search = [
        'path',
        'ip_address',
    ];

    public static function label()
    {
        return 'API Logs';
    }

    public static function singularLabel()
    {
        return 'API Log';
    }

    public static function authorizedToCreate(Request $request): bool
    {
        return false;
    }

    public function authorizedToUpdate(Request $request): bool
    {
        return false;
    }

    public function authorizedToDelete(Request $request): bool
    {
        return false;
    }

    public function fields(NovaRequest $request): array
    {
        return [
            ID::make()->sortable(),
            BelongsTo::make('Usuario', 'user', User::class)->nullable(),
            Text::make('Metodo', 'method')->sortable(),
            Text::make('Endpoint', 'path')->sortable(),
            Text::make('Query', 'query_string')->nullable()->onlyOnDetail(),
            Text::make('Status', 'status_code')->sortable(),
            Text::make('IP', 'ip_address')->sortable(),
            Number::make('Tiempo (ms)', 'response_time_ms')->sortable()->onlyOnDetail(),
            Text::make('User Agent', 'user_agent')->onlyOnDetail(),
            DateTime::make('Fecha', 'created_at')->sortable(),
        ];
    }

    public function actions(NovaRequest $request): array
    {
        return [
            new RevokeApiToken,
        ];
    }
}
