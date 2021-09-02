<?php

declare(strict_types=1);

namespace App\Console\Commands;

use Illuminate\Console\Command;
use Illuminate\Support\Facades\DB;

class CategoryProducts extends Command
{
    protected $signature = 'category:productsCount {ids}';

    protected $description = 'Command to get units of products for specified categories';

    public function __construct()
    {
        parent::__construct();
    }

    public function handle(): void
    {
        $categories = DB::table('product_category')
            ->selectRaw('count(*) as count, product_id, category_id')
            ->whereIn('category_id', explode(',', $this->argument('ids')))
            ->groupBy('product_id')
            ->get()
        ;

        $categoryProducts = [];

        foreach ($categories as $category) {
            $categoryProducts[$category->category_id][] = [
                'product_id' => $category->product_id,
                'count' => $category->count
            ];
        }

        foreach ($categoryProducts as $products) {
            foreach ($products as $product) {
                $this->info('id:' . $product['product_id'] . ' (' . $product['count'] . ')');
            }
        }
    }
}
