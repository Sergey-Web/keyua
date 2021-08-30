<?php

declare(strict_types=1);

namespace App\Console\Commands;

use Illuminate\Console\Command;
use App\Services\Companies\Company as CompanyEntity;
use Exception;

class Company extends Command
{
    protected $signature = 'company:employee {position}';

    protected $description = 'Сommand to check the skills and employee communication';

    private CompanyEntity $company;

    public function __construct()
    {
        $this->company = new CompanyEntity();
        parent::__construct();
    }

    public function handle(): void
    {
        $this->viewSkills();
        $this->viewCommunications();
    }

    /**
     * @throws Exception
     */
    private function viewSkills(): void
    {
        $this->warn('Skills: ');
        $skills = $this->company->getEmployee($this->argument('position'))->getSkill();
        foreach ($skills as $skill) {
            $this->info(' - ' . $skill);
        }
    }

    /**
     * @throws Exception
     */
    private function viewCommunications(): void
    {
        $this->warn('Communications: ');
        $skills = $this->company->getEmployee($this->argument('position'))->getCommunication();
        foreach ($skills as $skill) {
            $this->info(' - ' . $skill);
        }
    }
}
