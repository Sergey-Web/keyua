<?php

declare(strict_types=1);

namespace App\Services\Companies\Employee;

interface EmployeeInterface
{
    function getSkill(): array;

    function getCommunication(): array;

    function make(string $work): bool;
}
