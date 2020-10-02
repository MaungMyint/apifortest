<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class DonatedData extends Model
{
    protected $fillable = [
        'accountimage', 'accountname','memberphone','membername',
        'foundationlogo','foundationname','descrition'
    ];
}
