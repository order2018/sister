<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    protected $fillable = [
        'name',
        'url',
        'order',
    ];


    /**
     * 解决PC后台设置,创建生成option的方法
     * 文档中说的使用接口方式，而且返回文档中的格式，是不能解决自动选中原值的，只能是空白的。
     * @return array
     */
    public static function getSelectOptions()
    {
        $options = self::select('id','name as text')->get();
        $selectOption = [];
        foreach ($options as $option){
            $selectOption[$option->id] = $option->text;
        }
        return $selectOption;
    }

    public function article()
    {
        return $this->hasMany(Article::class);
    }
}
