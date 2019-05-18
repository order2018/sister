@extends('layouts.app')

@section('content')
<div class="container">
    <div class="card-deck">
        @foreach($article as $articles)
        <div class="card">
            <img class="card-img-top" src="{{ asset('uploads/'.$articles->picture) }}" alt="Card image cap">
            <div class="card-body">
                <h5 class="card-title">{{ $articles->title }}</h5>
                <p class="card-text">{{$articles->body}}</p>
                <p class="card-text"><small class="text-muted">{{$articles->created_at->diffForHumans()}}</small></p>
            </div>
        </div>
            @endforeach
    </div>
</div>
@endsection
