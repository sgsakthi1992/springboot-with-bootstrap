<%@ include file="common/header.jspf" %>
<%@ include file="common/navigation.jspf" %>
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
        <button type="submit" class="btn btn-warning">Update</button>
    </div>
</form:form>
<%@ include file="common/footer.jspf" %>