<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Resources\Api\UnitResource;
use App\Models\Unit;
use App\Models\UnitType;
use Illuminate\Http\Request;

class UnitsController extends Controller
{
    public function index(Request $request)
    {
        $validated = $request->validate([
            'status' => ['sometimes', 'string', 'in:available,reserved,sold'],
            'section_id' => ['sometimes', 'integer'],
            'unit_type_id' => ['sometimes', 'integer'],
            'bedrooms' => ['sometimes', 'integer'],
            'price_min' => ['sometimes', 'numeric'],
            'price_max' => ['sometimes', 'numeric'],
            'currency' => ['sometimes', 'string', 'in:USD,MXN'],
            'sort_by' => ['sometimes', 'string', 'in:price,floor,name,updated_at'],
            'sort_dir' => ['sometimes', 'string', 'in:asc,desc'],
            'per_page' => ['sometimes', 'integer', 'min:1', 'max:200'],
        ]);

        $sortBy = $validated['sort_by'] ?? 'name';
        $sortDir = $validated['sort_dir'] ?? 'asc';

        $query = Unit::query()
            ->with(['section', 'unitType.media', 'paymentPlans', 'media'])
            ->orderBy($sortBy, $sortDir);

        if (isset($validated['status'])) {
            $query->where('status', $this->denormalizeStatus($validated['status']));
        }

        if (isset($validated['section_id'])) {
            $query->where('section_id', $validated['section_id']);
        }

        if (isset($validated['unit_type_id'])) {
            $query->where('unit_type_id', $validated['unit_type_id']);
        }

        if (isset($validated['currency'])) {
            $query->where('currency', $validated['currency']);
        }

        if (isset($validated['price_min'])) {
            $query->where('price', '>=', $validated['price_min']);
        }

        if (isset($validated['price_max'])) {
            $query->where('price', '<=', $validated['price_max']);
        }

        if (isset($validated['bedrooms'])) {
            $query->whereHas('unitType', function ($query) use ($validated) {
                $query->where('bedrooms', $validated['bedrooms']);
            });
        }

        $perPage = $validated['per_page'] ?? 25;

        return UnitResource::collection(
            $query->paginate($perPage)->appends($request->query())
        );
    }

    public function show(int $id)
    {
        $unit = Unit::with(['section', 'unitType.media', 'paymentPlans', 'media'])->findOrFail($id);

        return new UnitResource($unit);
    }

    public function unitTypes()
    {
        $types = UnitType::withCount('units')
            ->with('media')
            ->orderBy('name')
            ->get();

        return response()->json($types->map(fn (UnitType $type) => [
            'id' => $type->id,
            'name' => trim($type->name.' '.($type->option ?? '')),
            'bedrooms' => $type->bedrooms,
            'bathrooms' => $type->bathrooms,
            'total_m2' => round(
                (float) $type->getRawOriginal('interior_const') + (float) $type->getRawOriginal('exterior_const'),
                2
            ),
            'units_count' => $type->units_count,
        ])->values());
    }

    private function denormalizeStatus(string $status): string
    {
        return match ($status) {
            'available' => 'Disponible',
            'reserved' => 'Apartada',
            'sold' => 'Vendida',
        };
    }
}
