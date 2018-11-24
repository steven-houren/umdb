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

$movieSelection = "SELECT * FROM Movies";



$movie_page_id = $_POST['movie_page_id'];

$actorJoin = "SELECT * FROM Movies AS Mo INNER JOIN actor_movie_join AS amj ON Mo.MovieID = amj.MovieID INNER JOIN actors act ON amj.ActorID = act.Actor_ID"; 



$joinGenre = "SELECT * FROM Movies AS Mo INNER JOIN genre_movie_join AS gmj ON Mo.MovieID = gmj.MovieID INNER JOIN Genres gen ON gmj.GenreID = gen.GenreID"; 



$showtimeJoin = "SELECT * FROM Movies AS Mo INNER JOIN ShowtimesJoin AS sj ON Mo.MovieID = sj.ShowtimesMovieID INNER JOIN ShowtimeProfiles AS sp ON sj.ShowtimesProfileID = sp.SP_ID INNER JOIN Theaters AS th ON sj.ShowtimesTheatersID = th.TheaterID WHERE th.TheaterID = 1 AND sj.ShowtimesDate = '2017-04-11' AND Mo.MovieID = $movie_page_id";



?>

<html>

<head>



<title>UMDB</title>



<style>

body{
    background-color: #151515;
    color: white;
    margin: 0 auto;
    font-family: Helvetica;
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
    width: 900px;
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

.MovieInfoBox{
    position: absolute;
    margin-left: 400px;
    top: 150px;
    width: 390px;
}

.PosterBox{
    position: relative;
    margin-top: 150px;

}

.ActorsBox{
    width: 990px;
    margin-left: auto;
    margin-right: auto;
    
}

.GenreBox{
    width: 990px;
    margin-left: auto;
    margin-right: auto;
    font-size: 20px;
    
}

.ShowtimesBox{
    width: 1000px;
    margin-left: auto;
    margin-right: auto;
}






</style>

<!-- <link rel="stylesheet" href="sketchy.css"> -->

</head>

<body>

<div class="tableBox">


<?php

// Returns a movie poster image as well as all the inforamtion from the Movies relation regarding that specific film.  
    foreach($db->query($movieSelection) as $movieReturn){
       
     if($movieReturn['MovieID'] == $movie_page_id){  

        echo "<div class='PosterBox'><img src='Images/Movies/".$movieReturn['MovieID']."M.jpg' alt='' height='578' width='390'></div>"; 

        echo "<div class='MovieInfoBox'>";
        
        echo "<table width='390' height='578' border='1' border-collapse='none' cellpadding='10' cellspacing='0'>";

        echo "<col width='100'>";
        echo "<col width='100'>";

        echo "<tr>";

        echo "<td colspan='2' align='center'>Movie Information</td>";

        echo "</tr>";
        echo "<tr>";

        echo "<td>Movie Name:</td><td align='center'>".$movieReturn['MovieName']."</td>";
        echo "</tr>";
        echo "<tr>";
        
        echo "<td>Metacritic Score:</td><td align='center'>".$movieReturn['MetacriticScore']."</td>";
        echo "</tr>";
        echo "<tr>";
        
        echo "<td>Release Date:</td><td align='center'>".$movieReturn['ReleaseDate']."</td>";
        echo "</tr>";
        echo "<tr>";
        
        echo "<td>Rating:</td><td align='center'>".$movieReturn['Rating']."</td>";
        echo "</tr>";
        echo "<tr>";
        
        echo "<td>Run Time:</td><td align='center'>".$movieReturn['RunTime']."</td>";
        echo "</tr>";
        echo "<tr>";

        echo "<td align='center' colspan='2'>Plot Summary:</td>";
        echo "</tr>";
        echo "<tr>";
        
        echo "<td align='left' colspan='2'>".$movieReturn['PlotSummary']."</td>";
        
        echo "</tr>";

        echo "</table>";

        echo "</div>";
        
     }

    }

?>


</div>

<div class='ShowtimesBox'>

<!--Returns a list of show times for the current date and the closest theater which by default is set to AMC Fairlane 21. -->

<h1>Today's Showtimes: <?php  date_default_timezone_set('America/New_York'); 
echo date("m/d/Y"); 

$CurrentDate = date("m/d/Y");

echo "<p></p>";

    foreach($db->query($showtimeJoin) as $showtimeReturn){
        
        echo "<tr>";
        echo "<td font-size='20px' align='center'>".$showtimeReturn['ShowtimeProfiles']."</td>";
        echo "</tr>";
     
    }
 
?></h1>




</div>


<div class='GenreBox'>

<h1>Genres:</h1>

<div class="GenreTable">

<?php

// Returns a list of this movies associated genres. 

echo " | ";



    foreach($db->query($joinGenre) as $genreReturn){
       
     if($genreReturn['MovieID'] == $movie_page_id){  
        echo "<tr>";
        echo "<td font-size='20px' align='center'><a href='Genre.php'>".$genreReturn['Genre']."</a> | </td>";
        echo "</tr>";
     }
    }
?>
</table>
</div>
</div>

<div class='ActorsBox'>
<h1>Actors List:</h1>
<div class="ActorsTable">
<table border="2px" cellspacing="0" cellpadding="1">

<col width="152">
<col width="100">
<col width="100">
<col width="100">
<col width="400">

<tr>
<th>Actor Headshot</th>
<th>First Name</th>
<th>Last Name</th>
<th>Birthdate</th>
<th>Hometown</th>
</tr>

<?php

// Returns all the actor information associated with the given movie ID for this page. 

foreach($db->query($actorJoin) as $actorJoinReturn)
{
       
     if($actorJoinReturn['MovieID'] == $movie_page_id){  

        echo "<tr>";
        echo "<td>"; 
        echo "<form action='ActorProfile.php' method='post'>";
        echo "<input name='imgInput' type='image' src='Images/Actors/".$actorJoinReturn['ActorID']."A.jpg' alt='' height='203' width='152'/>";
        echo "<input type='hidden' name='actor_page_id' value='".$actorJoinReturn['ActorID']."'/>";
        echo "</form>";
        echo "</td>";
        echo "<td align='center'>".$actorJoinReturn['Fname']."</td>";
        echo "<td align='center'>".$actorJoinReturn['Lname']."</td>";
        echo "<td align='center'>".$actorJoinReturn['Birthdate']."</td>";
        echo "<td align='center'>".$actorJoinReturn['Hometown']."</td>";
        echo "</tr>";

        }
    }
?>
</table>
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

