 

 <div id="header">
               <a href="/studentList">List</a>
               <a href="{{route('student/create')}}">Create</a>
               <a href="/studentGet">Get</a>
               @if(!Session::has('username'))<a href="{{route('login')}}">login</a>@endif
               @if(Session::has('username'))<a href="{{route('logout')}}">logout</a>@endif

</div>
