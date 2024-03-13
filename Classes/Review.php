<?php


class Review
{
    public $id;
    public $name;
    public $date;
    public $subject;
    public $text;
    public $image;
    public $rating;
    public $user_id;
    public $anime_id;

    public function __construct()
    {
        settype($this->id, 'integer');
        settype($this->anime_id, 'integer');
    }
}