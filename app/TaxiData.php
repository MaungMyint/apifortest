<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class TaxiData extends Model
{
    protected $fillable =
    [
        'user_id','carimage','driverimage','driverenglishname',
        'drivermyanmarname','driverphone','driveraddress','driveraddresscity',
        'descrition','cartype','carintnumber','carcharacter',
    ];
}
