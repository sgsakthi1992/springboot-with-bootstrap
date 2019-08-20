<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
    <head>
        <title>Update Todo</title>
        <link href="webjars/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
        <link href="webjars/bootstrap-datepicker/1.3.0/css/datepicker.css" rel="stylesheet">
        <link href="webjars/font-awesome/5.9.0/css/all.min.css" rel="stylesheet">
    </head>
    <body>
        <div class="jumbotron">
            <h1 class="display-4 text-center">Update TODO</h1>
        </div>
        <div class="container d-flex justify-content-center">
            <form:form method="post" modelAttribute="todo">
                <div class="form-group">
                    <div class="input-group">
                        <div class="input-group-append">
                            <span class="input-group-text">Description</span>
                        </div>
                        <form:input type="text" class="form-control" id="desc" name="desc" path="desc" required="required"/>
                    </div>
                    <form:errors path="desc" class="text-danger"/>
                </div>
                <div class="form-group">
                    <div class="input-group" >
                        <div class="input-group-append">
                            <span class="input-group-text">Target Date</span>
                        </div>
                        <form:input type="text" class="form-control" id="targetDate" path="targetDate" name="targetDate" required="required"/>
                        <div class="input-group-append">
                            <span class="input-group-text" id="btnPicker">
                                <i class="fas fa-calendar-alt"></i>
                            </span>
                        </div>
                    </div>
                    <form:errors path="targetDate" class="text-danger"/>
                </div>
                <div class="form-group d-flex justify-content-center">
                    <button type="submit" class="btn btn-light btn-outline-dark">Update</button>
                </div>
            </form:form>

            <script src="webjars/jquery/3.4.1/jquery.min.js"></script>
            <script src="webjars/bootstrap/4.3.1/js/bootstrap.min.js"></script>
            <script src="webjars/bootstrap-datepicker/1.3.0/js/bootstrap-datepicker.js"></script>
            <script src="webjars/font-awesome/5.9.0/js/all.min.js"></script>
             <script>
                  $(document).ready(function() {
                      $('#targetDate').datepicker();
                      $('#btnPicker').click(function () {
                          //alert('clicked');
                          $('#targetDate').datepicker('show');
                      });
                  });
             </script>
        </div>
    </body>
</html>