<?php

namespace app\controllers;

use app\model\Brand;

class FilteresController extends Controller
{
    public function actionIndex()
    {
        $item = \Brand::getModels();
        echo $this->render('index', [
            'page_size' => \App::getConfig('pageSize'),
            'item' => $item
        ]);
    }
    public function actionModels($params)
    {
        $response = \Products::getModelsFilteres($params['id']);
        echo json_encode($response, JSON_PRETTY_PRINT | JSON_UNESCAPED_UNICODE);
    }

    public function actionFilteres($params)
    {
        $result = \Products::getFilteres($params['id'], $params['volume']);
        echo json_encode($result, JSON_PRETTY_PRINT | JSON_UNESCAPED_UNICODE);
    }
}
