<form class="form-horizontal" action="/user/checkLogin" method="post">
    <div class="component" data-html="true">
        <div class="form-group">
            <label class="col-md-2 control-label" for="email">Mail</label>
            <div class="col-md-4">
                <input id="email" name="email" type="text" placeholder="Mail" class="form-control input-md">
            </div>
        </div>
        <div class="form-group">
            <label class="col-md-2 control-label" for="password1">Passwort</label>
            <div class="col-md-4">
                <input id="password1" name="password1" type="password" placeholder="Passwort" class="form-control input-md">
            </div>
        </div>
        <div class="form-group">
            <label class="col-md-2 control-label" for="send">&nbsp;</label>
            <div class="col-md-4">
                <input id="send" name="send" type="submit" class="btn btn-primary">
            </div>
        </div>
        <div class="form-group">
            <label class="col-md-2 control-label" name="meldung" id="meldung"></label>
        </div>
    </div>
</form>