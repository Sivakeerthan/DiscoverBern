<article class="hreview open special">
    <?php
    if (!isset($_SESSION['uid']) && empty($user)): ?>
        <div class="dhd">
            <h2 class="item title">Sie müssen sich einloggen!</h2>
        </div>
    <?php else: ?>
        <div class="panel panel-default">
            <div id="updatePost">
                <form action="/post/updatePost?pid=<?=$pid?>" method="post" enctype="multipart/form-data">
                    <div class="form-group">
                        <label for="postTitle">Titel: </label>
                        <input type="text" name="postTitle" id="postTitle" placeholder="Titel">
                    </div>
                    <div class="form-group">
                        <input type="submit" name="submit" value="Aktualisieren">
                    </div>
                </form>
            </div>
        </div>
        </div>
    <?php endif ?>
</article>
