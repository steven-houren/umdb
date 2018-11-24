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

//Actor id passed through from image click on previous page. 

$actor_page_id = $_POST['actor_page_id'];

// MySQL queries to MovieDB

$actorSelection = "SELECT * FROM actors";

$join = "SELECT * FROM Movies AS Mo INNER JOIN actor_movie_join AS amj ON Mo.MovieID = amj.MovieID INNER JOIN actors act ON amj.ActorID = act.Actor_ID"; 


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

.tableBox{
    width: 650px;
    margin-left: auto;
    margin-right: auto;
    
    
    margin-top: 100px;
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

.ActorInfoBox{
    position: absolute;
    margin-left: 200px;
    top: 150px;
    width: 390px;
}

.PosterBox{
    position: relative;
    margin-top: 150px;

}

.FilmographyBox{
    width: 800px;
    margin-left: auto;
    margin-right: auto;
}

</style>

</head>
<body>

<div class="tableBox">

<?php

// Returns all the actor inforamtion associated with the actor ID passed through this page in a tabular format.  

    foreach($db->query($actorSelection) as $actorResults){
       
     if($actorResults['Actor_ID'] == $actor_page_id){  

        echo "<div class='PosterBox'><img src='Images/Actors/".$actorResults['Actor_ID']."A.jpg' alt='' height='200' width='150'></div>"; 

        echo "<div class='ActorInfoBox'>";
        
        echo "<table width='450' height='200' border='1' border-collapse='none' cellpadding='10' cellspacing='0'>";

        echo "<col width='150'>";
        echo "<col width='300'>";

        echo "<tr>";

        echo "<td colspan='2' align='center'>Actor Information</td>";

        echo "</tr>";
        echo "<tr>";

        echo "<td>Actor Name:</td><td align='center'>".$actorResults['Fname']." ".$actorResults['Lname']."</td>";
        echo "</tr>";
        echo "<tr>";
        
        echo "<td>Hometown:</td><td align='center'>".$actorResults['Hometown']."</td>";
        echo "</tr>";
        echo "<tr>";
        
        echo "<td>Birth Date:</td><td align='center'>".$actorResults['Birthdate']."</td>";
        
        echo "</tr>";

        echo "</table>";

        echo "</div>";
    
     }

    }

?>

</div>

<div class='FilmographyBox'>

<h1>Filmography:</h1>

<div class="FilmographyTable">

<?php

// Returns a list of all the movies in the database associated with the actor ID for this page.  

echo "<table width='900px'>";


    foreach($db->query($join) as $ActorMovieResult){
       
     if($ActorMovieResult['Actor_ID'] == $actor_page_id){  

        echo "<form action='MovieProfile.php' method='POST'>";

        echo "<input name='imgInput' type='image' src='Images/Movies/".$ActorMovieResult['MovieID']."M.jpg'alt='' height='289' width='195'/>";

        echo "<input type='hidden' name='movie_page_id' value='".$ActorMovieResult['MovieID']."'/>";

        echo "</form>";
     }
    }

    echo "</table>";

?>

</div>
</div>


<!--Fixed top navigation bar.-->

<div class="header">
        <div class="container">
        <div class="logo">
            <h2><a href="Home.php">UMDB</a></h2>
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

