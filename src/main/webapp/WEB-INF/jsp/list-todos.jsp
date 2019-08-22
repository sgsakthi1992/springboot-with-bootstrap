<%@ include file="common/header.jspf" %>
<%@ include file="common/navigation.jspf" %>
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
                    <td><f:formatDate value="${todo.targetDate}" pattern="dd/MM/yyyy"/></td>
                    <td>${todo.done}</td>
                    <td><a class="btn btn-warning" href="/update-todo?id=${todo.id}">Update</a></td>
                    <td><a class="btn btn-danger" href="/delete-todo?id=${todo.id}">Delete</a></td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
    <div class="d-flex justify-content-center">
        <a class="btn btn-success" href="/todo">Add a TODO</a>
    </div>
</div>
<%@ include file="common/footer.jspf" %>