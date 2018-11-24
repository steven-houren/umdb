<?php

//Database connection

$servername = "localhost";
$username = "root";
$password = "";
$dbase = "MovieDB";


try{
    $db = new PDO("mysql:host=$servername;port=8080;dbname=$dbase", $username, $password);
}
catch(PDOException $e){
    echo $e->getMessage()."<br>";
    die();
}

// MySQL queries to MovieDB

$sql = "SELECT * FROM Movies";

$actorJoin = "SELECT * FROM Movies AS Mo INNER JOIN actor_movie_join AS amj ON Mo.MovieID = amj.MovieID INNER JOIN actors act ON amj.ActorID = act.Actor_ID"; 

$joinGenre = "SELECT * FROM Movies AS Mo INNER JOIN genre_movie_join AS gmj ON Mo.MovieID = gmj.MovieID INNER JOIN Genres gen ON gmj.GenreID = gen.GenreID"; 

$dropdownSelection = $_POST['GenreOption'];

?>

<html>
<head>
<title>UMDB</title>

<style>

body{
    background-color: #151515;
    color: white;
    margin: 0 auto;
    font-family: Chalkduster;
}

table, td, th{
    border: 1px solid white;
    background: #050505;
    
}

h1{
    font-size:30px;
}

h2{
    font-size: 30px;
}


.container{
    width: 960px;
    margin: 0 auto;
}

.header{
    background: #000;
    width: 100%;
    top: 0;
    position: fixed;
    font-family: Chalkduster;
}

.logo{
    float: left;
    font-family: Helvetica;  
    font-size: 15px;
}

a{
    text-decoration: none;
    color: white;
}

li{
    list-style: none;
    float: left;
    margin-left: 40px;
    padding-top: 15px;
    font-size: 20px;
    font-family: helvetica;
    
}

.nav, a:hover{
    color: #49E20E;
}

.nav{
    float: right;
}

.GenreForm{
    width: 900px;
    margin-top: 100px;
    margin-left: auto;
    margin-right: auto;

}

.dropdownMenu{
    margin-top:0;
    margin-right:0.125rem;
    font-family: Chalkduster;

}

</style>

</head>

<body>


<div class="GenreForm">

<h1>Genres:</h1>

<div class="dropdownMenu">

<form action="Genre.php" method="POST">


<!--Genre option dropdown box that allows the user to choose a genre and see a list of movies associated with that genre. -->
    

    <select class="select" name="GenreOption">
        <option value="#">{Genre}</option>
        <option value="1">Action</option>
        <option value="2">Adventure</option>
        <option value="3">Animated</option>
        <option value="4">Biography</option>
        <option value="5">Kids</option>
        <option value="6">Crime</option>
        <option value="7">Documentary</option>
        <option value="8">Drama</option>
        <option value="9">Fantasy</option>
        <option value="10">Historical Drama</option>
        <option value="11">Horror</option>
        <option value="12">Musical</option>
        <option value="13">Romance</option>
        <option value="14">Romantic Comedy</option>
        <option value="15">Science Fiction</option>
        <option value="16">Thriller</option>
        <option value="17">War</option>
        <option value="18">Western</option>
        <option value="19">Comedy</option>
        <option value="20">Mystery</option>
    </select>
    <input type="submit" value="Submit">



</form>

<div class='GenreBox'>

<div class="GenreTable">


<?php

// Code that returns a list of movie posters based on an genre input from the user. 

echo "<table width='900px'>";

foreach($db->query($joinGenre) as $GenreResult){
       
     if($GenreResult['GenreID'] == $dropdownSelection){  

        echo "<form action='MovieProfile.php' method='POST'>";

        echo "<input name='imgInput' type='image' src='Images/Movies/".$GenreResult['MovieID']."M.jpg'alt='' height='289' width='195'/>";

        echo "<input type='hidden' name='movie_page_id' value='".$GenreResult['MovieID']."'/>";

        echo "</form>";


     }

    }

    echo "</table>";


?>

</table>

</div>

</div>

</div>

</div>


<!--Fixed top navigation bar.-->

<div class="header">
        <div class="container">
        <div class="logo">
            <h1><a href="Home.php">UMDB</a></h1>
        </div>

        <div class="nav">
            <ul>
                <li><a href="Actors.php">Actors<a></li>
                <li><a href="Movies.php">Movies<a></li>
                <li><a href="Genre.php">Genres<a></li>
                <li><a href="Showtimes.php">Showtimes<a></li>
            </ul>
        </div>
        </div>
    </div>


</body>


</html>

