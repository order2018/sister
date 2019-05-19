<?php

namespace App\Admin\Controllers;

use App\Models\Article;
use App\Http\Controllers\Controller;
use App\Models\Category;
use Encore\Admin\Controllers\HasResourceActions;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Layout\Content;
use Encore\Admin\Show;

class ArticleController extends Controller
{
    use HasResourceActions;

    /**
     * Index interface.
     *
     * @param Content $content
     * @return Content
     */
    public function index(Content $content)
    {
        return $content
            ->header('资讯管理')
            ->description('列表')
            ->body($this->grid());
    }

    /**
     * Show interface.
     *
     * @param mixed $id
     * @param Content $content
     * @return Content
     */
    public function show($id, Content $content)
    {
        return $content
            ->header('Detail')
            ->description('description')
            ->body($this->detail($id));
    }

    /**
     * Edit interface.
     *
     * @param mixed $id
     * @param Content $content
     * @return Content
     */
    public function edit($id, Content $content)
    {
        return $content
            ->header('Edit')
            ->description('description')
            ->body($this->form()->edit($id));
    }

    /**
     * Create interface.
     *
     * @param Content $content
     * @return Content
     */
    public function create(Content $content)
    {
        return $content
            ->header('Create')
            ->description('description')
            ->body($this->form());
    }

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Article);

        $grid->id('序号')->sortable();
        $grid->title('标题');
        $grid->order('排序');
        $grid->category()->name('类别');
        $grid->is_pay('是否付费')->display(function ($pay){
            if ($pay)
                return '未支付';
            return '已支付';
        });
        $grid->is_hidden('是否隐藏')->display(function ($hidden){
            if ($hidden=='K')
                return '开启';
            return '隐藏';
        });
        $grid->created_at('创建时间');
        $grid->updated_at('更新时间');

        return $grid;
    }

    /**
     * Make a show builder.
     *
     * @param mixed $id
     * @return Show
     */
    protected function detail($id)
    {
        $show = new Show(Article::findOrFail($id));

        $show->title('标题');
        $show->picture('图片')->image();
        $show->body('内容');
        $show->order('排序');
        $show->is_hidden('是否隐藏');
        $show->category()->name('所属分类');
        $show->created_at('创建时间');
        $show->updated_at('更新时间');

        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new Article);

        $form->text('title', '标题');
        $form->image('picture', '图片');
        $form->textarea('body', '内容');
        $form->text('order', '排序')->default(0);
        $form->select('is_hidden', '是否隐藏')->options([
            'H' => '隐藏',
            'K' => '开启'
        ])->default('K');
        $form->select('category_id', '所属分类')->options(Category::getSelectOptions())->rules('required',[
            'required' => '分类必填',
        ]);

        return $form;
    }
}
