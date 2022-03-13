<html>

@extends('layouts.loggedin')
@section('reg')

     
    <form action="{{route('update.submit',['id'=>$s->id])}}" method="post">
      {{csrf_field()}}
        
        <input type="text" name="username" value="{{old('username')}}" placeholder="Username"><br>
        @error('username')
           <span class="text-danger">{{$message}}</span><br>
        @enderror
        <input type="text" name="email" value="{{old('email')}}" placeholder="Email"><br>
        @error('email')
           <span class="text-danger">{{$message}}</span><br>
        @enderror
      
        
       <input type="submit" value="Update"> 
     


    </form>
@endsection('reg')    
     
</html> 
    