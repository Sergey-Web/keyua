<?php

declare(strict_types=1);

namespace App\Console\Commands;

use App\Models\Repositories\CategoryRepository;
use Illuminate\Console\Command;
use Illuminate\Support\Collection;
use Illuminate\Support\Facades\DB;

class Category extends Command
{
    protected $signature = 'category:product {id}';

    protected $description = 'Command to get category names by product ids';

    public function __construct()
    {
        parent::__construct();
    }

    public function handle(): void
    {
        $categoriesIds = (new CategoryRepository)
            ->getCategoryHierarchyByParent((int) $this->argument('id'));

        $products = DB::table('product_category as pc')
            ->select(['c.id as category_id', 'c.name as category_name', 'p.id as product_id', 'p.name as product_name'])
            ->whereIn('category_id', $categoriesIds)
            ->join('products as p', 'pc.product_id', '=', 'p.id')
            ->join('categories as c', 'pc.category_id', '=', 'c.id')
            ->get()
        ;

        foreach ($this->sortProductByCategory($products) as $categoryId => $category) {
            $this->warn($category[0]['category_name'] . ' (' . $categoryId . ') ');
            foreach ($category as $item) {
                $this->info(' - ' . $item['product_name'] . ' (' . $item['product_id'] . ') ');
            }
        }
    }

    private function sortProductByCategory(Collection $products): array
    {
        $productsSort = [];

        foreach ($products as $product) {
            $productsSort[$product->category_id][] = [
                'category_name' => $product->category_name,
                'product_id' => $product->product_id,
                'product_name' => $product->product_name,
            ];
        }

        return $productsSort;
    }
}
