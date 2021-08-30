<?php

declare(strict_types=1);

namespace App\Services\Companies\Employee;

class Designer extends EmployeeAbstract implements EmployeeInterface
{
    protected const SKILLS = [
        'draw' => 'draw',
    ];

    protected const COMMUNICATIONS = [
        'manager',
    ];
}
