<?php

declare(strict_types=1);

namespace App\Console\Commands;

use App\Services\Companies\Company as CompanyEntity;
use Illuminate\Console\Command;
use Exception;

class Employee extends Command
{
    protected $signature = 'employee:can {position} {make}';

    protected $description = 'Command to verify that the employee can do';

    private CompanyEntity $company;

    public function __construct()
    {
        $this->company = new CompanyEntity();
        parent::__construct();
    }

    /**
     * @throws Exception
     */
    public function handle(): void
    {
        $make = $this->company
                    ->getEmployee($this->argument('position'))
                    ->make($this->argument('make'));

        $this->info(
            $make ? 'true' : 'false'
        );
    }
}
