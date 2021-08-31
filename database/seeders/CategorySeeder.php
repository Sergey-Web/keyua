<?php

declare(strict_types=1);

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Exception;

class CategorySeeder extends Seeder
{
    /**
     * @throws Exception
     */
    public function run()
    {
        $categoryIds = 20;
        $parent = 1;

        for ($i = 1; $i <= $categoryIds; $i++) {
            if ($i % 3 === 0) {
                $parent++;
            }

            if ($parent > 3) {
                $parent = 1;
            }

            DB::table('categories')->insert([
                'id' => $i,
                'name' => 'category_' . bin2hex(random_bytes(5)) . $i,
                'parent' => $parent === $i ? null : $parent
            ]);
        }
    }
}
