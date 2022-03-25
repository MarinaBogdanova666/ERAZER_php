<?php

namespace app\controllers;

use app\model\News;

class DeliveryController extends Controller
{

    public function actionIndex() {
        echo $this->render('delivery', ['page_size' => \App::getConfig('pageSize')]);
    }
}