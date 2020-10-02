<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class GuideData extends Model
{
    protected $fillable =
    [
      'bloggerimage','bloggername','bloggeraddress','bloggeraddresscity',
      'bloggerphone','descrition','bloggeremail','myanmarlanguage',
      'englishlanguage','chinselanguage','janpanselanguage','point'
    ];
}
