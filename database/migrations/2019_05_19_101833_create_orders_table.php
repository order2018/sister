<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateOrdersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('orders', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('no')->unique()->comment('订单流水号');
            $table->string('name',128)->index()->comment('订单名称');
            $table->tinyInteger('status')->default(0)->comment('订单状态：0等待支付，1支付成功，2支付失败，3关闭订单');
            $table->decimal('total_amount',11,2)->index()->default('0.00')->comment('订单总余额');
            $table->dateTime('paid_at')->nullable()->comment('支付时间');
            $table->string('payment_method',32)->nullable()->comment('支付方式');
            $table->string('payment_no',32)->nullable()->comment('支付平台订单号');
            $table->unsignedBigInteger('user_id')->index()->comment('下单的用户ID');
            $table->unsignedBigInteger('article_id')->index()->comment('购买的资讯ID');
            $table->foreign('user_id')->references('id')->on('users')->onDelete('cascade')->comment('外键联级删除');
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
        Schema::dropIfExists('orders');
    }
}
