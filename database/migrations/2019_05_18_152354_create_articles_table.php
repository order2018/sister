<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateArticlesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('articles', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('title',128)->comment('标题');
            $table->string('picture',128)->nullable()->comment('图片');
            $table->longText('body')->comment('内容');
            $table->unsignedBigInteger('order')->default(0)->comment('排序');
            $table->decimal('money',10,2)->default('0.00')->comment('金额');
            $table->string('is_hidden',32)->default('H')->comment('隐藏：H是隐藏，K是开启');
            $table->unsignedBigInteger('category_id')->index()->comment('类别ID');
            $table->foreign('category_id')->references('id')->on('categories')->onDelete('cascade')->comment('外键联级删除');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('articles');
    }
}
