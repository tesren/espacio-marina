<?php

namespace App\Http\Middleware;

use App\Models\ApiRequestLog;
use Closure;
use Illuminate\Auth\Access\AuthorizationException;
use Illuminate\Auth\AuthenticationException;
use Illuminate\Http\Request;
use Illuminate\Validation\ValidationException;
use Laravel\Sanctum\Exceptions\MissingAbilityException;
use Symfony\Component\HttpKernel\Exception\HttpExceptionInterface;
use Throwable;

class LogApiRequest
{
    public function handle(Request $request, Closure $next)
    {
        $start = microtime(true);

        try {
            $response = $next($request);

            $this->logRequest($request, $response->getStatusCode(), $start);

            return $response;
        } catch (Throwable $exception) {
            $this->logRequest($request, $this->statusCodeFromException($exception), $start);

            throw $exception;
        }
    }

    private function logRequest(Request $request, int $statusCode, float $start): void
    {
        try {
            ApiRequestLog::create([
                'user_id' => $request->user()?->id,
                'method' => $request->method(),
                'path' => $request->path(),
                'query_string' => $request->getQueryString(),
                'status_code' => $statusCode,
                'ip_address' => $request->ip(),
                'user_agent' => substr($request->userAgent() ?? '', 0, 500),
                'response_time_ms' => (int) round((microtime(true) - $start) * 1000),
            ]);
        } catch (Throwable $exception) {
            logger()->error('API log failed: '.$exception->getMessage());
        }
    }

    private function statusCodeFromException(Throwable $exception): int
    {
        return match (true) {
            $exception instanceof AuthenticationException => 401,
            $exception instanceof AuthorizationException => $exception->status() ?? 403,
            $exception instanceof MissingAbilityException => 403,
            $exception instanceof ValidationException => $exception->status,
            $exception instanceof HttpExceptionInterface => $exception->getStatusCode(),
            default => 500,
        };
    }
}
