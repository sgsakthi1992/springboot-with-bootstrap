<%@ include file="common/header.jspf" %>
<%@ include file="common/navigation.jspf" %>
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
<%@ include file="common/footer.jspf" %>