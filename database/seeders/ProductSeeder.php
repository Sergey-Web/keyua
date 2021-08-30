<?php

declare(strict_types=1);

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class ProductSeeder extends Seeder
{
    public function run()
    {
        $productNum = 20;

        for ($i = 1; $i <= $productNum; $i++) {
            DB::table('products')->insert(['id' => $i, 'name' => 'product' . $i]);
        }

    }
}
