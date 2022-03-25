<?php

namespace app\controllers;

class SearchController extends Controller
{
    public function actionIndex() {
        echo $this->render('search', ['page_size' => \App::getConfig('pageSize')]);
    }
    public function actionSearch($params)
    {
        $item = \Products::getSearch($params['search']);
        if (empty($item)) {
            $item['message_error'] = "По вашему запросу {$params['search']} ничего не найдено";
        }
        echo $this->render('search', array_merge([
            'item' => $item
        ]));
    }
}
