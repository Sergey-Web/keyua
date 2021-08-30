<?php

declare(strict_types=1);

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class CategorySeeder extends Seeder
{
    public function run()
    {
        $productNum = 20;

        for ($i = 1; $i <= $productNum; $i++) {
            DB::table('categories')->insert([
                'id' => $i,
                'name' => 'category' . $i,
                'parent' => random_int(1,3) % 3 ? random_int(1,20) : null,
            ]);
        }
    }
}
