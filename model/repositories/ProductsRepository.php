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

    public function getModels()
    {
        $sql = "SELECT * FROM models GROUP BY brand ORDER BY brand ASC";
        return $this->getDb()->queryAll($sql);
    }


    public function getSearch($params)
    {
        $sql = "SELECT * FROM products WHERE MATCH (name,description) AGAINST ('{$params}')";
        return $this->getDb()->queryAll($sql);
    }
    
    public function getModelsFilteres($params)
    {
        $sql = "SELECT * FROM models WHERE brand_id = {$params}";
        return $this->getDb()->queryAll($sql);
    }

    public function getFilteres($modelsId, $modelsVolume)
    {
        $sql = "SELECT * FROM products WHERE models_id = {$modelsId} AND models_volume = {$modelsVolume}";
        return $this->getDb()->queryAll($sql);
    }
}
