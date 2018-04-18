<!DOCTYPE html>
<html lang="de">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title><?= $title ?> | Bbc MVC</title>

    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">

    <!-- Custom styles for this template -->
    <link href="/css/style.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>
    <div class="navbar-head">
      <div id="logo">
          <h1 id="db">DiscoverBern</h1>
      </div>
      <div id="links">
      <nav>
        <a class="nature" href="/nature"><img class="navicon4" src="/images/icons/icons8-trekking-48.png" /></a>
        <a class="bars" href="/bars"><img class="navicon1" src="/images/icons/icons8-bar-48.png" /></a>
        <a class="restaurants" href="/restaurants"><img class="navicon2" src="/images/icons/icons8-restaurant-48.png" /></a>
        <a class="tourism" href="/tourism"><img class="navicon3" src="/images/icons/icons8-tourist-männlich-48.png" /></a>
        <a class="login" href="/user/login">Login</a>
      </nav>
    </div>
    </div>

    <div class="container">

    <h1><?= $heading ?></h1>
