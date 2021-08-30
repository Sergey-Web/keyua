<?php

declare(strict_types=1);

namespace App\Services\Companies\Employee;

class Programmer extends EmployeeAbstract implements EmployeeInterface
{
    protected const SKILLS = [
        'writeCode' => 'code writing',
        'writeTest' => 'code testing',
    ];

    protected const COMMUNICATIONS = [
        'manager',
    ];
}
