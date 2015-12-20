@extends('account.layout')

@section('content')
    <h1>Profit And Loss Account</h1>
    <hr>
    {!! Form::open(['url'=>url('account/profit-and-loss-account')]) !!}
    <div class="row">
        <div class="col-md-3">
            <div class="form-group">
                {!! Form::label('start_date', 'Start Date:') !!}
                {!! Form::text('start_date',Carbon\Carbon::now()->toDateString(), ['class'=>'form-control','id'=>'start_date', 'data-toggle' => 'datepicker' ]) !!}
            </div>
        </div>

        <div class="col-md-3">
            <div class="form-group }}">
                {!! Form::label('end_date', 'End Date:') !!}
                {!! Form::text('end_date',Carbon\Carbon::now()->toDateString(), ['class'=>'form-control','id'=>'start_date', 'data-toggle' => 'datepicker']) !!}
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            {!! Form::submit('Print',['class'=>'btn btn-primary']) !!}
        </div>
    </div>
    {!! Form::close() !!}

@endsection
