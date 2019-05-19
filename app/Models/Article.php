<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Article extends Model
{
    protected $fillable = [
        'title',
        'picture',
        'body',
        'order',
        'is_hidden',
        'category_id',
    ];

    public function category()
    {
        return $this->belongsTo(Category::class);
    }
}
