<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Place extends Model
{

    protected $fillable = [
        'placeimage','placeimageone','placeimagetwo',
        'placeimagethree','placename','placeaddress',
        'placecity','nearby','latitude','longitude',
        'descrition'
    ];
}
