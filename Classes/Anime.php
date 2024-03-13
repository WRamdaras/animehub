<?php


class Anime
{
    public $id;
    public $name;
    public $image;
    public $info;
    public $category_id;

    public function __construct()
    {
        settype($this->id, 'integer');
        settype($this->category_id, 'integer');
    }
}