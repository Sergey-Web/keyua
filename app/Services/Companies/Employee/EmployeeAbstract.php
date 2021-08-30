<?php

declare(strict_types=1);

namespace App\Services\Companies\Employee;

abstract class EmployeeAbstract implements EmployeeInterface
{
    public function getSkill(): array
    {
        return static::SKILLS;
    }

    public function getCommunication(): array
    {
        return static::COMMUNICATIONS;
    }

    public function make(string $work): bool
    {
        return array_key_exists($work, static::SKILLS);
    }
}
