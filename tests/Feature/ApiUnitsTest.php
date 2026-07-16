<?php

namespace Tests\Feature;

use App\Models\ApiRequestLog;
use App\Models\User;
use Illuminate\Foundation\Testing\DatabaseTransactions;
use Illuminate\Support\Facades\Hash;
use Laravel\Sanctum\Sanctum;
use Tests\TestCase;

class ApiUnitsTest extends TestCase
{
    use DatabaseTransactions;

    public function test_unauthenticated_units_request_is_logged(): void
    {
        $this->getJson('/api/units')->assertUnauthorized();

        $this->assertDatabaseHas('api_request_logs', [
            'method' => 'GET',
            'path' => 'api/units',
            'status_code' => 401,
        ]);
    }

    public function test_token_without_units_read_ability_is_rejected_and_logged(): void
    {
        Sanctum::actingAs($this->apiUser(), []);

        $this->getJson('/api/units')->assertForbidden();

        $this->assertDatabaseHas('api_request_logs', [
            'method' => 'GET',
            'path' => 'api/units',
            'status_code' => 403,
        ]);
    }

    public function test_login_throttle_response_is_logged(): void
    {
        $payload = ['email' => 'missing-api-user@example.com', 'password' => 'invalid'];

        for ($attempt = 0; $attempt < 6; $attempt++) {
            $response = $this->postJson('/api/login', $payload);
        }

        $response->assertTooManyRequests();

        $this->assertDatabaseHas('api_request_logs', [
            'method' => 'POST',
            'path' => 'api/login',
            'status_code' => 429,
        ]);
    }

    public function test_units_endpoint_returns_standard_schema_and_exact_types(): void
    {
        Sanctum::actingAs($this->apiUser(), ['units:read']);

        $response = $this->getJson('/api/units?per_page=1')->assertOk();

        $unit = $response->json('data.0');

        $this->assertIsArray($unit);
        $this->assertSame([
            'id',
            'project',
            'name',
            'status',
            'floor',
            'price',
            'currency',
            'section',
            'unit_type',
            'payment_plans',
            'gallery',
            'youtube_url',
            'secondary_youtube_url',
            'project_extras',
            'updated_at',
        ], array_keys($unit));
        $this->assertIsInt($unit['floor']);
        $this->assertIsFloat($unit['price']);
        $this->assertIsFloat($unit['unit_type']['total_m2']);
        $this->assertSame(round($unit['unit_type']['total_m2'], 2), $unit['unit_type']['total_m2']);
    }

    private function apiUser(): User
    {
        return User::query()->first() ?? User::forceCreate([
            'name' => 'API Test User',
            'email' => 'api-test@example.com',
            'password' => Hash::make('password'),
            'lang' => 'es',
            'role' => 'admin',
        ]);
    }
}
