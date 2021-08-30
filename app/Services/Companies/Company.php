<?php

declare(strict_types=1);

namespace App\Services\Companies;

use App\Services\Companies\Employee\Designer;
use App\Services\Companies\Employee\EmployeeInterface;
use App\Services\Companies\Employee\Manager;
use App\Services\Companies\Employee\Programmer;
use App\Services\Companies\Employee\Tester;
use Exception;

class Company
{
    private array $employees = [
        'designer' => Designer::class,
        'manager' => Manager::class,
        'programmer' => Programmer::class,
        'tester' => Tester::class,
    ];

    public function getEmployee(string $position): EmployeeInterface
    {
        if (!array_key_exists($position, $this->employees)) {
            throw new Exception('The company does not have such a position');
        }

        return new $this->employees[$position];
    }
}
