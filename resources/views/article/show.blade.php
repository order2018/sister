@extends('layouts.app')

@section('content')
<div role="main" class="container">
     <div class="row">
        <div class="col-md-8 blog-main">
            <div class="blog-post">
                <h2 class="blog-post-title">{{ $article->title }}</h2>
                <p class="blog-post-meta">发布：{{$article->created_at->diffForHumans()}}</p>

                <p>{{$article->body}}</p>
                <hr>
                <p>
                    <div class="card">
                         <img class="card-img-bottom" src="{{'/uploads/'.$article->picture}}" alt="Card image cap">
                         <div class="card-body">
                             <h5 class="card-title">{{ $article->title }}</h5>
                             <p class="card-text">{{ $article->body }}</p>
                         </div>
                    </div>
                </p>

                <h2>专辑</h2>
                <p>{{ $article->body }}</p>
                <h3>视频</h3>
                @if($hidden)
                <p>{{ $article->body }}</p>
                @else
                <p>点击付费查看更多...</p>
                <p><button type="button" class="btn btn-info">去支付</button></p>
                @endif

            </div>
        </div>

        <aside class="col-md-4 blog-sidebar">
            <div class="p-3 mb-3 bg-light rounded">
                <h4 class="font-italic">介绍</h4>
                <p class="mb-0">范冰冰，1981年9月16日出生于山东青岛，华语影视女演员、制片人、歌手，毕业于上海师范大学谢晋影视艺术学院。</p>
            </div>

            <div class="p-3">
                <h4 class="font-italic">资讯</h4>
                <ol class="list-unstyled mb-0">
                    <li><a href="#">March 2014</a></li>
                    <li><a href="#">February 2014</a></li>
                    <li><a href="#">January 2014</a></li>
                    <li><a href="#">December 2013</a></li>
                </ol>
            </div>
        </aside>

    </div>
</div>
@endsection
