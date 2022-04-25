<?php

namespace app\controllers;

class AdminController extends Controller
{

    public function actionIndex()
    {
        if (\Auth::isAdmin()) {
            echo $this->render('admin', [
                'page_size' => \App::getConfig('pageSize'),
            ]);
        } else {
            echo $this->render('accessDenited', []);
        }
    }

    public function actionOrders()
    {
        if (\Auth::isAdmin()) {
            echo $this->render('orders', [
                'page_size' => \App::getConfig('pageSize'),
                'partOrders' => 'all'
            ]);
        } else {
            echo $this->render('accessDenited', []);
        }
    }

    public function actionModels()
    {
        $models = \Models::getAllModels();
        if (\Auth::isAdmin()) {
            echo $this->render('edit_models', [
                'page_size' => \App::getConfig('pageSize'),
                'models' => $models
            ]);
        } else {
            echo $this->render('accessDenited', []);
        }
    }

    public function actionProducts()
    {
        $products = \Products::getAllProducts();
        if (\Auth::isAdmin()) {
            echo $this->render('products', [
                'page_size' => \App::getConfig('pageSize'),
                'products' => $products
            ]);
        } else {
            echo $this->render('accessDenited', []);
        }
    }

    public function actionUpdateProducts($params)
    {
        $products = \Products::where('id', $params['id'])->first();

        if (\Auth::isAdmin()) {
            $products->name = $params['name'];
            $products->description = $params['description'];
            $products->price = $params['price'];
            $products->quantity_stock = $params['quantity_stock'];
            $products->categories_id = $params['categories_id'];
            \Products::save($products);
        } else {
            echo $this->render('accessDenited', []);
        }
    }




    public function actionEditProducts($params)
    {
        $products = \Products::getOneProducts($params['id']);
        $categories = \Categories::getCategories();
        $models = \Models::getAllModels();
        if (\Auth::isAdmin()) {
            echo $this->render('edit', [
                'page_size' => \App::getConfig('pageSize'),
                'products' => $products,
                'categories' => $categories,
                'models' => $models
            ]);
        } else {
            echo $this->render('accessDenited', []);
        }
    }
}
