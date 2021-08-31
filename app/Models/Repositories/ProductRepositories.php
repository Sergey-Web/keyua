<?php

declare(strict_types=1);

namespace App\Models\Repositories;

use App\Models\Product;
use Illuminate\Support\Collection;

class ProductRepositories extends Product
{
    public function getUniqueProductByCategory(array $categoryIds): Collection
    {
        return self::query()
            ->select(['pc.product_id', 'p.name'])
            ->from('product_category as pc')
            ->whereIn('pc.category_id', $categoryIds)
            ->join(self::getTable() . ' as p', 'pc.product_id', '=', 'p.id')
            ->groupBy('pc.product_id')
            ->get();
    }
}
