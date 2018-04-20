<article class="hreview open special">
	<?php
    $ort = array();
    if (!isset($_SESSION['uid']) && empty($user)): ?>
		<div class="dhd">
			<h2 class="item title">Sie müssen sich einloggen!</h2>
		</div>
	<?php else: ?>
			<div class="panel panel-default">
                <div id="createPost">
                    <form action="post/createPost" method="post" enctype="multipart/form-data">
                    <div class="form-group">
                        <label for="postTitle">Titel: </label>
                        <input type="text" name="postTitle" id="postTitle" placeholder="Titel">
                    </div>
                    <div class="form-group">
                        <label for="fileToUpload">Bild:</label>
                        <input type="file" name="fileToUpload" id="fileToUpload">
                    </div>
                    <div class="form-group">
                        <label for="postCategory">Kategorie:</label>
                        <select name="postCategory" id="postCategory">
                            <option value="restaurants">Restaurants</option>
                            <option value="bars">Bars</option>
                            <option value="wandern">Wandern</option>
                            <option value="tourism">Tourismus</option>
                        </select>
                    </div>
                <div class="form-group">
                    <label for="postPlace">Ort:</label>
                    <select name="postPlace" id="postPlace">
                        <?php foreach ($places AS $place): ?>
                            <option value='<?= $place->plz ?>'><?= $place->plz ?> <?= $place->ort ?></option>
                        <?php endforeach; ?>
                    </select>
                </div>
                <div class="form-group">
                    <input type="submit" name="submit" value="Posten">
                    </div>
                    </form>
            </div>
            </div>
            <div class="panel2 panel-default">
                <div class="showMyPosts">
                    <h2>Meine Posts</h2>
                    <?php foreach ($posts AS $post): ?>
                    <div class='content'>
                        <img class='img2' src='<?=$post->imgurl?>'/>
                        <div class='text'>
                            <h1 class='bildTitel'><?=$post->title?></h1>
                            <p class='uploadUser'>Hochgeladen von <?=$post->uname?></p>
                            <p class='imgTags'>1, 2, 3, 4, 5</p>
                            <a class='linkMap' href='https://www.openstreetmap.org/search?query=<?=$post->uname?>%20<?=$post->imgurl?>' target='_blank'>3027, Bern</a>
                            <div class='rates'>
                               <?php if($post->rateadd > 0): ?>
                                <label>Likes: <?=$post->rateadd?></label>
                                <br />
                                <?php else:?>
                                <label>Likes: 0</label>
                                <br />
                                <?php endif;?>
                                <?php if($post->ratermv > 0):?>
                                <label>Dislikes: <?=$img->ratermv?></label>
                                <?php else:?>
                                <label>Dislikes: 0</label>
                                <?php endif; ?>
                            </div>
                            <div class="edit">
                                <a href="/post/delete?pid=<?= $post->pid; ?>"><label>Löschen</label></a>
                                <a href="/post/update">Bearbeiten</a>
                            </div>
                        </div>
                    </div>
                    </div>
                    <?php endforeach;?>
                </div>
            </div>
	<?php endif ?>
</article>
