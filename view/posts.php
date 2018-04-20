

<?php
echo "<div class='rows'>";

 foreach($images AS $img){
     echo "
 
    <div class='content'>
    <img class='img2' src='$img->imgurl'/>
    <div class='text'>
    <h1 class='bildTitel'>$img->title</h1>
    <p class='uploadUser'>Hochgeladen von $img->uname</p>
    <p class='imgTags'>1, 2, 3, 4, 5</p>
    <a class='linkMap' href='https://www.openstreetmap.org/search?query=$img->uname%20$img->imgurl' target='_blank'>3027, Bern</a>
    <div class='rates'>
    <label>Likes: 1</label>
    <br />
    <label>Dislikes: 3</label>
    ";
    if (!isset($_SESSION['uid']) && empty($user))
      {
        echo "<label class='userRate'><a href='/user/login'>Einloggen</a> zum Bewerten</label>";
      }
    else {
      echo "
   <form method='post'>
    <input type='hidden' name='postPid' id='postPid' value='$img->pid'>
    <input type='hidden' name='postCategory' id='postCategory' value='$img->category_name'>
    <a class='userRate' href='post/rateAdd'>like</a>
    <a class='userRate' href='post/rateRmv'>dislike</a>
      </form>";
    }
    echo "
    </div>
    </div>
    </div>
  ";
}
echo "</div>";
?>
