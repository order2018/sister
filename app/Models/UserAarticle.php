<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class UserAarticle extends Model
{
    protected $fillable = [
        'user_id',
        'article_id'
    ];
}
