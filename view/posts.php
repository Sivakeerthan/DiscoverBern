

<?php
echo "<div class='rows'>";

 foreach($images AS $img){
    echo "
    <div class='content'>
    <img class='img2' src='$img->imgurl'/>
    <div class='text'>
    <h1 class='bildTitel'>$img->title</h1>
    <p class='uploadUser'>Uploaded by $img->uname</p>
    <p class='imgTags'>1, 2, 3, 4, 5</p>
    <a class='linkMap' href='https://www.openstreetmap.org/search?query=$img->uname%20$img->imgurl' target='_blank'>3027, Bern</a>
    <div class='rates'>
    <label>1</label>
    <label>2</label>
    </div>
    </div>
    </div>
  ";
}
echo "</div>";
?>
