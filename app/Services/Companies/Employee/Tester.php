<?php

declare(strict_types=1);

namespace App\Services\Companies\Employee;

class Tester extends EmployeeAbstract implements EmployeeInterface
{
    protected const SKILLS = [
        'setTask' => 'set task',
        'writeTest' => 'code testing',
    ];

    protected const COMMUNICATIONS = [
        'manager',
    ];
}
