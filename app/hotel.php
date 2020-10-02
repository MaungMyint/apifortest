<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class hotel extends Model
{
    protected $fillable = [
        'hotelimage', 'hotelname','hotelmyanmarname','price',
        'opentime','phone','ratings','ratingsint','descrition',
        'parking','swimming','wifi','food','galleryoneimage',
        'gallerytwoimage','gallerythreeimage','status',
    ];
}
