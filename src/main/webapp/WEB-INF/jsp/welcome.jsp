<html>
    <head>
        <title>Welcome ${name}</title>
        <link href="webjars/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
        <link href="webjars/font-awesome/5.9.0/css/all.min.css" rel="stylesheet">
    </head>
    <body>
        <div class="jumbotron">
            <h1 class="display-4 text-center">Welcome ${name}!!</h1>
        </div>
        <div class="container">
            <div class="input-group d-flex justify-content-center">
                <div class="input-group-prepend">
                    <span class="input-group-text bg-light"><i class="fas fa-tools"></i></span>
                </div>
                <a href="/list-todos" class="btn btn-light btn-outline-dark">Manage your todo's</a>
            </div>
        </div>
        <script src="webjars/jquery/3.4.1/jquery.min.js"></script>
        <script src="webjars/bootstrap/4.3.1/js/bootstrap.min.js"></script>
        <script src="webjars/font-awesome/5.9.0/js/all.min.js"></script>
    </body>
</html>