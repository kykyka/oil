@extends ('layouts.oil')
@section ('content')

<div class="row"> <h1 class="col-md-12">Масла для двигателя</h1><br>
	@if(count($engine) > 0)
		@foreach ($engine as $oil)
		<div class="col-md-4 center">
			<span>Название: {{ $oil->name }}</span><br>
			<span>Обьем: {{ $oil->size }} л.</span><br>
			<span>Цена: {{ $oil->price }} грн.</span><br>
			@if(isset($oil->SAE))
			<span>SAE: {{ $oil->SAE }}</span><br>
			@endif
			@if(isset($oil->ASEA))
			<span>ASEA: {{ $oil->ASEA }} </span><br>
			@endif
			@if(isset($oil->API))
			<span>API: {{ $oil->API }}</span><br>
			@endif
			@if(isset($oil->BMW))
			<span>BMW: {{ $oil->BMW }}</span><br>
			@endif
			@if(isset($oil->Chrysler))
			<span>Chrysler: {{ $oil->Chrysler }}</span><br>
			@endif
			@if(isset($oil->Fiat))
			<span>Fiat: {{ $oil->Fiat }}</span><br>
			@endif
			@if(isset($oil->Ford))
			<span>Ford: {{ $oil->Ford }}</span><br>
			@endif
			@if(isset($oil->General_Motors))
			<span>General Motors: {{ $oil->General_Motors }}</span><br>
			@endif
			@if(isset($oil->Jaguar))
			<span>Jaguar: {{ $oil->Jaguar }}</span><br>
			@endif
			@if(isset($oil->Land_Rover))
			<span>Land Rover: {{ $oil->Land_Rover }}</span><br>
			@endif
			@if(isset($oil->Mercedes))
			<span>Mercedes: {{ $oil->Mercedes }} </span><br>
			@endif
			@if(isset($oil->Opel))
			<span>Opel: {{ $oil->Opel }} </span><br>
			@endif
			@if(isset($oil->Opel))
			<span>Opel: {{ $oil->Opel }} </span><br>
			@endif
			@if(isset($oil->Peugeot_Citroen))
			<span>Peugeot Citroen: {{ $oil->Peugeot_Citroen }} </span><br>
			@endif
			@if(isset($oil->Porsche))
			<span>Porsche: {{ $oil->Porsche }} </span><br>
			@endif
			@if(isset($oil->Renault))
			<span>Renault: {{ $oil->Renault }} </span><br>
			@endif
			@if(isset($oil->Volvo))
			<span>Volvo: {{ $oil->Volvo }} </span><br>
			@endif
			@if(isset($oil->VW))
			<span>VW: {{ $oil->VW }} </span><br>
			@endif
			
			
		</div>
		@endforeach
	@else
	<span>Масло еще не добавлено, че за хуйня...</span>
	@endif
</div>

<div class="row"> <h1 class="col-md-12">Масла для трансмиссии</h1><br>
	@if(count($transmission) > 0)
		@foreach ($transmission as $oil)
		<div class="col-md-4 center">
			<span>Название: {{ $oil->name }}</span><br>
			<span>Обьем: {{ $oil->size }} л.</span><br>
			<span>Цена: {{ $oil->price }} грн.</span>@if(isset($oil->SAE))
			<span>SAE: {{ $oil->SAE }}</span><br>
			@endif
			@if(isset($oil->Allison))
			<span>Allison: {{ $oil->Allison }} </span><br>
			@endif
			@if(isset($oil->ZS))
			<span>ZS: {{ $oil->ZS }}</span><br>
			@endif
		</div>
		@endforeach
	@else
	<span>Масло еще не добавлено, че за хуйня...</span>
	@endif
</div>
	
</div>

@endsection