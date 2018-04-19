

<?php
echo "<div class='rows'>";

 foreach($images AS $img){
    echo "
    <div class='content'>
    <img class='img2' src='$img->imgurl'/>
    <div class='text'>
    <h1 class='bildTitel'>$img->title</h1>
    <p class='uploadUser'>Uploaded by $img->uname</p>
    </div>
    </div>
  ";
}
echo "</div>";
?>
