

<?php
echo "<div class='rows2'>";

 foreach($images AS $img){
     echo "

    <div class='content'>
    <img class='img2' src='$img->imgurl'/>
    <div class='text'>
    <h1 class='bildTitel'>$img->title</h1>
    <p class='uploadUser'>Hochgeladen von $img->uname</p>
    ";
    if (isset($_SESSION) && !empty($_SESSION)&& $_SESSION['admin'] == 1){
    echo "<a href='/post/delete?pid=<?= $img->pid; ?>'><label>Löschen</label></a>";
    }
    echo "<p class='imgTags'>1, 2, 3, 4, 5</p>
    <a class='linkMap' href='https://www.openstreetmap.org/search?query=sternen%20bümpliz' target='_blank'>3027, Bern</a>
    <div class='rates'>
    ";
     if($img->rateadd > 0){ echo"
    <label>Likes: $img->rateadd</label>
    <br />";}
    else{
    echo"<label>Likes: 0</label>
    <br />";}
    if($img->ratermv > 0){
         echo"<label>Dislikes: $img->ratermv</label>";
    }
    else{
         echo"<label>Dislikes: 0</label>";
    }

    if (!isset($_SESSION['uid']) && empty($user))
      {
        echo "<label class='userRate'><a href='/user/login'>Einloggen</a> zum Bewerten</label>";
      }
    else {
      echo "
   <form method='post'>
    <input type='hidden' name='postPid' id='postPid' value='$img->pid'>
    <input type='hidden' name='postCategory' id='postCategory' value='$img->category_name'>
    <a class='userRate' href='/post/rateAdd?post=$img->pid&category=$img->category_name'>like</a>
    <a class='userRate' href='/post/rateRmv?post=$img->pid&category=$img->category_name'>dislike</a>
      </form>";
    }
    echo "
    </div>
    </div>
    </div>
    </br>
  ";
}
echo "</div>";
?>
