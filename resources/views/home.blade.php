@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row">
            @foreach($article as $articles)
                <div class="col-md-4" onclick="window.location.href='article/'+'{{$articles->id}}';">
                    <div class="card mb-4 box-shadow">
                        <img class="card-img-top" data-src="holder.js/100px225?theme=thumb&amp;bg=55595c&amp;fg=eceeef&amp;text=Thumbnail" alt="Thumbnail [100%x225]" style="height: 225px; width: 100%; display: block;" src="{{ asset('uploads/'.$articles->picture) }}" data-holder-rendered="true">
                        <div class="card-body">
                            <p class="card-text">{{$articles->body}}</p>
                            <div class="d-flex justify-content-between align-items-center">
                                <div class="btn-group">
                                    <button type="button" class="btn btn-sm btn-outline-secondary">去看看</button>
                                    <button type="button" class="btn btn-sm btn-outline-secondary">免费</button>
                                </div>
                                <small class="text-muted">{{$articles->created_at->diffForHumans()}}</small>
                            </div>
                        </div>
                    </div>
                </div>
            @endforeach
        </div>
    </div>
@endsection