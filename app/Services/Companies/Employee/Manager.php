<?php

declare(strict_types=1);

namespace App\Services\Companies\Employee;

class Manager extends EmployeeAbstract implements EmployeeInterface
{
    protected const SKILLS = [
        'setTask' => 'set task',
    ];

    protected const COMMUNICATIONS = [
        'programmer',
        'designer',
        'tester',
    ];
}
