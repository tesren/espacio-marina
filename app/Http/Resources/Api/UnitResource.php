<?php

namespace App\Http\Resources\Api;

use Illuminate\Http\Resources\Json\JsonResource;
use Spatie\MediaLibrary\HasMedia;

class UnitResource extends JsonResource
{
    public function toArray($request): array
    {
        return [
            'id' => $this->id,
            'project' => config('app.api_project_slug'),
            'name' => $this->name,
            'status' => $this->normalizeStatus((string) $this->status),
            'floor' => (int) $this->floor,
            'price' => $this->nullableFloat($this->price),
            'currency' => $this->currency,

            'section' => $this->section ? [
                'id' => $this->section->id,
                'name' => $this->section->name,
            ] : null,

            'unit_type' => $this->unitType ? [
                'id' => $this->unitType->id,
                'name' => trim($this->unitType->name.' '.($this->unitType->option ?? '')),
                'bedrooms' => (int) $this->unitType->bedrooms,
                'bathrooms' => $this->nullableFloat($this->unitType->bathrooms),
                'flexrooms' => (int) ($this->unitType->flexrooms ?? 0),
                'interior_m2' => $this->nullableFloat($this->rawAttribute('interior_const')),
                'exterior_m2' => $this->nullableFloat($this->rawAttribute('exterior_const')),
                'open_exterior_m2' => $this->nullableFloat($this->rawAttribute('extra_exterior_const')),
                'parking_m2' => null,
                'storage_m2' => $this->nullableFloat($this->rawAttribute('storage')),
                'total_m2' => $this->nullableFloat($this->rawAttribute('const_total')),
                'blueprints' => $this->mediaCollection($this->unitType, 'blueprints'),
                'gallery' => $this->mediaCollection($this->unitType, 'gallery'),
            ] : [
                'id' => null,
                'name' => null,
                'bedrooms' => null,
                'bathrooms' => null,
                'flexrooms' => null,
                'interior_m2' => $this->nullableFloat($this->rawAttribute('interior_const')),
                'exterior_m2' => $this->nullableFloat($this->rawAttribute('exterior_const')),
                'open_exterior_m2' => $this->nullableFloat($this->rawAttribute('extra_exterior_const')),
                'parking_m2' => null,
                'storage_m2' => $this->nullableFloat($this->rawAttribute('storage')),
                'total_m2' => $this->nullableFloat($this->rawAttribute('const_total')),
                'blueprints' => [],
                'gallery' => [],
            ],

            'payment_plans' => $this->paymentPlans->map(fn ($plan) => [
                'id' => $plan->id,
                'name' => $plan->name,
                'name_en' => $plan->name_en ?? null,
                'discount' => $this->float($plan->discount ?? 0),
                'additional_discount' => $this->nullableFloat($plan->additional_discount),
                'down_payment' => $this->float($plan->down_payment ?? 0),
                'starting_const' => 0.0,
                'second_payment' => $this->float($plan->second_payment ?? 0),
                'second_payment_months' => 0,
                'second_payment_const' => false,
                'third_payment' => 0.0,
                'third_payment_months' => 0,
                'third_payment_const' => false,
                'months_percent' => $this->float($plan->months_percent ?? 0),
                'monthly_payments' => null,
                'months_during_const' => false,
                'closing_payment' => $this->float($plan->closing_payment ?? 0),
            ])->values(),

            'gallery' => $this->mediaCollection($this->resource, 'unitgallery'),
            'youtube_url' => $this->youtube_link ?? null,
            'secondary_youtube_url' => null,
            'project_extras' => $this->projectExtras(),
            'updated_at' => $this->updated_at?->toISOString(),
        ];
    }

    private function normalizeStatus(string $status): string
    {
        return match ($status) {
            'Disponible' => 'available',
            'Apartada', 'Reservada' => 'reserved',
            'Vendida', 'Vendido' => 'sold',
            default => strtolower($status),
        };
    }

    private function mediaCollection(?HasMedia $model, string $collection): array
    {
        if (! $model) {
            return [];
        }

        return $model->getMedia($collection)->map(fn ($media) => array_filter([
            'url' => $media->getUrl(),
            'thumb' => $media->hasGeneratedConversion('thumb') ? $media->getUrl('thumb') : null,
            'medium' => $media->hasGeneratedConversion('medium') ? $media->getUrl('medium') : null,
        ]))->values()->all();
    }

    private function projectExtras(): array
    {
        return array_filter([
            'section_view' => $this->section?->view,
            'tower_name' => $this->section?->tower_name,
            'parking_spaces' => $this->unitType?->parking_spaces !== null
                ? $this->float($this->unitType->parking_spaces)
                : null,
            'patio_m2' => $this->nullableFloat($this->rawAttribute('patio')),
            'rooftop_m2' => $this->nullableFloat($this->rawAttribute('rooftop')),
            'garden_m2' => $this->nullableFloat($this->rawAttribute('garden')),
            'view_image' => $this->assetUrl($this->view_path),
            'lockoff_id' => $this->lockoff_id ?? null,
            'lockoff_strict' => isset($this->lockoff_type) ? (bool) $this->lockoff_type : null,
        ], fn ($value) => $value !== null && $value !== '');
    }

    private function nullableFloat($value): ?float
    {
        return $value === null ? null : $this->float($value);
    }

    private function float($value, int $decimals = 2): float
    {
        return round((float) $value, $decimals);
    }

    private function rawAttribute(string $key)
    {
        return $this->resource->getRawOriginal($key);
    }

    private function assetUrl(?string $path): ?string
    {
        if (! $path) {
            return null;
        }

        if (str_starts_with($path, 'http://') || str_starts_with($path, 'https://')) {
            return $path;
        }

        return asset($path);
    }
}
