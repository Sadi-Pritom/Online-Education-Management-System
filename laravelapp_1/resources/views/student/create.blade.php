@extends('layouts.loggedin')
@section('createe')
<h1>create</h1>


@php
 $name1= "<h1 style='color:red'> Akkas Ali </h1>";
 $name2= htmlspecialchars("<h1 style='color:red'> Akkas Ali </h1>");
@endphp


<div><?php echo $name1; ?></div>
<div><?php echo $name2; ?></div>
<div>{{$name1}}</div>

@endsection('createe')

