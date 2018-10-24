@extends('layouts.oil')

@section('content')

<div class="row">
  <div class="col-sm-6 col-md-4 prod-category">
    <div class="thumbnail">
      <img src="{{asset('images/auto.jpg')}}" alt="..." style="min-height: 250px; max-width: 350px;">
      <div class="caption">
        <h3>Подбор по автомобилю</h3>
        <p>Вы можете подобрать масло по марке автомобиля</p>
        <p><a href="{{route('cars')}}" class="btn btn-primary" role="button">Button</a> <a href="#" class="btn btn-default" role="button">Button</a></p>
      </div>
    </div>
  </div>
  <div class="col-sm-6 col-md-4 prod-category">
    <div class="thumbnail">
      <img src="{{asset('images/oil.jpg')}}" alt="..." style="min-height: 250px; max-width: 350px;">
      <div class="caption">
        <h3>Автомасла</h3>
        <p>Перейти к каталогу автомасел</p>
        <p><a href="{{ route('oilBrands') }}" class="btn btn-primary" role="button">Button</a> <a href="#" class="btn btn-default" role="button">Button</a></p>
      </div>
    </div>
  </div>
  <div class="col-sm-6 col-md-4 prod-category">
    <div class="thumbnail">
      <img src="{{asset('images/certificate.jpg')}}" alt="..." style="min-height: 250px; max-width: 350px;">
      <div class="caption">
        <h3>Подбор по допускам</h3>
        <p>Подобрать автомасло по допускам</p>
        <p><a href="#" class="btn btn-primary" role="button">Button</a> <a href="#" class="btn btn-default" role="button">Button</a></p>
      </div>
    </div>
  </div>
</div>
@endsection