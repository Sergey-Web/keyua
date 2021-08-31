<?php

declare(strict_types=1);

namespace App\Models\Repositories;

use App\Models\Category;

class CategoryRepository extends Category
{
    private static array $categoriesIds = [];

    public function getCategoryHierarchyByParent(int $parentId): array
    {
        if(array_search($parentId, static::$categoriesIds) === false) {
            array_push(static::$categoriesIds, $parentId);
        }

        $categories = self::query()->where(['parent' => $parentId])->get();

        if ($categories !== null) {
            foreach ($categories as $category) {
                $this->getCategoryHierarchyByParent($category->id);
            }
        }

        return static::$categoriesIds;
    }
}
