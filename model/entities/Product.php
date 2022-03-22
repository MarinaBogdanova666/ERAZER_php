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

    protected $props = [
            'name' => false,
            'description' => false,
            'price' => false,
            'image' => false,
            'quantity_stock' => false
    ];


    public function __construct($name = null, $description = null, $price = null, $image = 'undefined.jpg', $quantity_stock = null)
    {
        $this->name = $name;
        $this->description = $description;
        $this->price = $price;
        $this->image = $image;
        $this->quantity_stock = $quantity_stock;
    }

}
