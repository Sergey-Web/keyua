<?php

declare(strict_types=1);

namespace App\Console\Commands;

use App\Models\Repositories\ProductRepositories;
use Illuminate\Console\Command;

class ProductUnique extends Command
{
    protected $signature = 'product:getUnique {ids}';

    protected $description = 'Command to get the unique products of the categories';

    public function __construct()
    {
        parent::__construct();
    }

    public function handle(): void
    {
       $products = (new ProductRepositories())
           ->getUniqueProductByCategory(
               explode(',', $this->argument('ids'))
           );

       foreach ($products as $product) {
           $this->info($product->name . ' (' . $product->product_id . ')');
       }
    }
}
