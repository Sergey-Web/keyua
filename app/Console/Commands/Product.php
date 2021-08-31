<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use App\Models\Product as ProductModel;

class Product extends Command
{
    protected $signature = 'product:get {ids}';

    protected $description = 'Command to get products in all nested categories by category id';

    public function __construct()
    {
        parent::__construct();
    }

    public function handle(): void
    {
        $products = ProductModel::query()
            ->whereIn('id', explode(',', $this->argument('ids')))
            ->get();

        foreach ($products as $product) {
            foreach ($product->categories as $category) {
                $this->info($product->id . ' - ' . $category->name);
            }
        }
    }
}
