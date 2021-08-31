<?php

declare(strict_types=1);

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class ProductCategorySeeder extends Seeder
{
    public function run()
    {
        $productNum = 100;

        for ($i = 1; $i <= $productNum; $i++) {
            DB::table('product_category')->insert([
                'product_id' => $i <= 20 ? $i : random_int(1,20),
                'category_id' => random_int(1,20),
            ]);
        }
    }
}
