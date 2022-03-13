<html>
     <head>
            <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
     </head>
     <body>
        @include('inc.header')
        @yield('gett')
        @yield('listt') 
        @yield('createe') 
         @yield('reg') 
        <br>
         <div id="footer"> &copy adv. Web Spring 2022 </div>
     </body>
</html>