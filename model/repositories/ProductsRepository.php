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

//    Функция получения всех моделей для формы с выбором(только наработка)

    public function getModels() {
        $sql = "SELECT * FROM models GROUP BY brand ORDER BY brand ASC";
        return $this->getDb()->queryAll($sql);
    }

    public function getSearch($params) {
        $sql = "SELECT * FROM `products` WHERE MATCH (name,description) AGAINST ('{$params}')";
        return $this->getDb()->queryAll($sql);
    }
}
