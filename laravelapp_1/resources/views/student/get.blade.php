@extends('layouts.loggedin')
@section('gett')
<h1>get</h1>
<h4>Name: {{$s->name}} </h4>
<h4>ID: {{$s->id}} </h4>
<h4>ID: {{$s->department->name}} </h4>


<ol>
    @foreach($s->courseStudent as $cs)
         <li>{{$cs->course->name}} offered by {{$cs->course->department->name}}</li> 
    @endforeach

</ol> 



@endsection('gett')