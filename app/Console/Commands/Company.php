<?php

declare(strict_types=1);

namespace App\Console\Commands;

use App\Services\Companies\Employee\EmployeeInterface;
use Illuminate\Console\Command;
use App\Services\Companies\Company as CompanyEntity;
use Throwable;

class Company extends Command
{
    protected $signature = 'company:employee {position}';

    protected $description = 'Command to check the skills and employee communication';

    private CompanyEntity $company;

    private EmployeeInterface $position;

    public function __construct()
    {
        parent::__construct();
        $this->company = new CompanyEntity();
    }

    public function handle(): void
    {
        try {
            $this->position = $this->company->getEmployee($this->argument('position'));
            $this->viewSkills();
            $this->viewCommunications();
        } catch (Throwable $e) {
            $this->error($e->getMessage());
        }
    }

    private function viewSkills(): void
    {
        $this->warn('Skills: ');
        $skills = $this->position->getSkill();

        foreach ($skills as $skill) {
            $this->info(' - ' . $skill);
        }
    }

    private function viewCommunications(): void
    {
        $this->warn('Communications: ');
        $skills = $this->position->getCommunication();

        foreach ($skills as $skill) {
            $this->info(' - ' . $skill);
        }
    }
}
