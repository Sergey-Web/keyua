<?php

declare(strict_types=1);

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Exception;

class DatabaseSeeder extends Seeder
{
    /**
     * @throws Exception
     */
    public function run()
    {
        (new ProductSeeder)->run();
        (new CategorySeeder())->run();
        (new ProductCategorySeeder())->run();
    }
}
