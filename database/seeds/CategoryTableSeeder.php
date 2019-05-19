<?php

use Illuminate\Database\Seeder;

class CategoryTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //填充分类栏目数据
        $date = date('Y-m-d H:i:s');

        $data = [
            [
                'name' => '图片',
                'created_at' => $date,
                'updated_at' => $date,
            ],
            [
                'name' => '小说',
                'created_at' => $date,
                'updated_at' => $date,
            ],
            [
                'name' => '搞笑',
                'created_at' => $date,
                'updated_at' => $date,
            ],
            [
                'name' => '视频',
                'created_at' => $date,
                'updated_at' => $date,
            ],

        ];

        DB::table('categories')->insert($data);
    }
}
