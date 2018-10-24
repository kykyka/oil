@extends ('layouts.oil')
@section ('content')

<div class="row col-md-12">
	@foreach($brands as $brand)
		<div class="col-md-4" style="min-height: 200px; padding: 100px">
			<a href="{{route('oils', $brand->id) }}">{{ $brand->name }}</a>
		</div>
	@endforeach
</div>

@endsection