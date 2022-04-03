<?php

namespace app\model\entities;

use app\model\Model;

class Product extends Model
{
    protected $id;
    protected $name;
    protected $description;
    protected $price;
    protected $image;
    protected $quantity_stock;
    protected $models_id;
    protected $models_volume;

    protected $props = [
        'name' => false,
        'description' => false,
        'price' => false,
        'image' => false,
        'quantity_stock' => false,
        'models_id' => false,
        'models_volume' => false
    ];


    public function __construct($name = null, $description = null, $price = null, $image = 'undefined.jpg', $quantity_stock = null, $models_id = null, $models_volume= null)
    {
        $this->name = $name;
        $this->description = $description;
        $this->price = $price;
        $this->image = $image;
        $this->quantity_stock = $quantity_stock;
        $this->models_id = $models_id;
        $this->models_volume = $models_volume;
    }
}
