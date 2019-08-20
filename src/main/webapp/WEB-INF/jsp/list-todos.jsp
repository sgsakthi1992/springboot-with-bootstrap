<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
    <head>
        <title>Todo's for ${name}</title>
        <link href="webjars/bootstrap/4.3.1/css/bootstrap.min.css"
                	    		rel="stylesheet">
    </head>
    <body>
        <div class="jumbotron">
            <h1 class="display-4 text-center">${name}'s Todos</h1>
        </div>
        <div class="container">
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th>Description</th>
                        <th>Target Date</th>
                        <th>Is it Done?</th>
                        <th>Update</th>
                        <th>Delete</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${list}" var="todo">
                        <tr>
                            <td>${todo.desc}</td>
                            <td>${todo.targetDate}</td>
                            <td>${todo.done}</td>
                            <td><a type="button" class="btn btn-warning" href="/update-todo?id=${todo.id}">Update</a></td>
                            <td><a type="button" class="btn btn-danger" href="/delete-todo?id=${todo.id}">Delete</a></td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
            <div class="d-flex justify-content-center">
                <a class="btn btn-light btn-outline-dark" href="/todo">Add a TODO</a>
            </div>
        </div>
        <script src="webjars/jquery/3.4.1/jquery.min.js"></script>
        <script src="webjars/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    </body>
</html>