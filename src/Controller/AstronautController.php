<?php
declare(strict_types=1);

namespace App\Controller;

use Symfony\Component\HttpFoundation\JsonResponse;

class AstronautController
{
    /**
     * @return JsonResponse
     */
    public function getAstronautsAction(): JsonResponse
    {
        $response = new JsonResponse(['astronaut' => ['id' => 1]]);

        return $response;
    }
}
