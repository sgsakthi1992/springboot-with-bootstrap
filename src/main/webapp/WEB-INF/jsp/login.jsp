<html>
    <head>
        <title>First Web Application</title>
        <link href="webjars/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
        <link href="webjars/font-awesome/5.9.0/css/all.min.css" rel="stylesheet">
        <style>
            #checkUser{
                display: none;
            }
        </style>
    </head>
    <body>
        <div class="jumbotron">
            <h1 class="display-4 text-center">Welcome to TODO</h1>
        </div>
        <div class="container d-flex justify-content-center">
            <form method="post">
                <div id="${checkUser}" class="text-danger d-flex justify-content-center" role="alert">${validationMsg}</div>
                <div class="form-group">
                    <div class="input-group">
                        <div class="input-group-append">
                            <span class="input-group-text"><i class="fa fa-user"></i></span>
                        </div>
                        <input type="text" class="form-control" id="name" name="name">
                    </div>
                </div>
                <div class="form-group">
                    <div class="input-group">
                        <div class="input-group-append">
                            <span class="input-group-text"><i class="fa fa-key"></i></span>
                        </div>
                        <input type="password" class="form-control" id="password" name="password">
                    </div>
                </div>
                <div class="form-group d-flex justify-content-center">
                    <button type="submit" class="btn btn-light btn-outline-dark">Login</button>
                </div>
            </form>
        </div>
        <script src="webjars/jquery/3.4.1/jquery.min.js"></script>
        <script src="webjars/bootstrap/4.3.1/js/bootstrap.min.js"></script>
        <script src="webjars/font-awesome/5.9.0/js/all.min.js"></script>
    </body>
</html>