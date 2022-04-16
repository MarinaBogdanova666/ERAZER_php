<?php

namespace app\model\repositories;

use app\model\Repository;
use app\model\entities\Models;

class ModelsRepository extends Repository
{
    public function getEntityClass()
    {
        return Models::class;
    }

    public function getTableName()
    {
        return "models";
    }

    public function getModels($params)
    {
        $sql = "SELECT * FROM models WHERE brand_id = {$params}";
        return $this->getDb()->queryAll($sql);
    }
}
