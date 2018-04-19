<article class="hreview open special">
	<?php if (!isset($_SESSION['uid']) && empty($user)): ?>
		<div class="dhd">
			<h2 class="item title">Sie müssen sich einloggen!</h2>
		</div>
	<?php else: ?>
			<div class="panel panel-default">
                <div id="createPost">
                    <form action="post/create" method="post" enctype="multipart/form-data">
                    <div class="form-group">
                        <label for="postTitle">Titel: </label>
                        <input type="text" name="postTitle" id="postTitle" placeholder="Titel">
                    </div><div class="form-group">
                        <label for="fileToUpload">Bild:</label>
                        <input type="file" name="fileToUpload" id="fileToUpload">
                    </div><div class="form-group">
                        <label for="postCategory">Kategorie:</label>
                        <select name="postCategory" id="postCategory">
                            <option value="restaurants">Restaurants</option>
                            <option value="bars">Bars</option>
                            <option value="wandern">Wandern</option>
                            <option value="tourism">Tourismus</option>
                        </select>
                    </div>
                </div><div class="form-group">
                    <label for="postPlace">Ort:</label>
                    <select name="postPlace" id="postPlace">
                        <?php foreach($places AS $place){
                            echo "<option value='$place->ort'>$place->plz".' '."$place->ort</option>";
                        }
                        ?>
                    </select>
                </div<div class="form-group">
                    <input type="submit" name="submit" value="Posten">
                    </div>
                    </form>
                </div>
				</div>
			</div>
	<?php endif ?>
</article>
