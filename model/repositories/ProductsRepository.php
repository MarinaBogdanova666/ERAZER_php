<?php

namespace app\model\repositories;

use app\model\Repository;
use app\model\entities\Product;

class ProductsRepository extends Repository
{
    public function getEntityClass()
    {
        return Product::class;
    }

    public function getTableName()
    {
        return "products";
    }

    public function getModels() {
        $sql = "SELECT * FROM models GROUP BY brand ORDER BY brand ASC";
        return $this->getDb()->queryAll($sql);
    }
}
