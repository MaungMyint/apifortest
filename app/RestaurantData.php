<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class RestaurantData extends Model
{
    protected $fillable =
    [
        'restaurantimage','myanmarname','englishname','restauranttype',
        'restaurantphone','opentime','closetime','closeweekday',
        'address','addresscity','descrition','myanmarfoods',
        'khayafoods','chinsefoods','shanfoods','thailandfoods',
        'foreignfoods'
    ];
}
