<form class="form-horizontal" action="/user/checkLogin" method="post">
    <div class="component" data-html="true">
        <div class="form-group">
            <label class="col-md-2 control-label" for="email">Mail</label>
            <div class="col-md-4">
                <input id="email" name="email" type="text" placeholder="Mail" class="form-control input-md" onkeydown="Validate()">
            </div>
        </div>
        <div class="form-group">
            <label class="col-md-2 control-label" for="password1">Passwort</label>
            <div class="col-md-4">
                <input id="password" name="password" type="password" placeholder="Passwort" class="form-control input-md">
            </div>
        </div>
        <div class="form-group">
            <label class="col-md-2 control-label" for="send">&nbsp;</label>
            <div class="col-md-4">
                <input id="send" name="send" type="submit" class="btn btn-primary">
              </br>
              </br>
                <p>Noch kein Konto? Registrieren sie sich <a id="register" href="create/">hier</a></p>
            </div>
        </div>
        <div class="form-group">
            <label class="col-md-2 control-label" name="meldung" id="meldung"></label>
        </div>
    </div>
</form>
