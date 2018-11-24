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

error_reporting(0);


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
    font-size:40px;
}

h2{
    font-size: 25px;
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

.ShowtimesForm{
    width: 716px;
    margin-top: 200px;
    margin-left: auto;
    margin-right: auto;

}

</style>

</head>

<body>



<div class="ShowtimesForm">

<h1>Showtimes: </h1>

<!--Form dropdown boxes that provide the user with the ability to choose a theater, a movie, and a date then returns show times.-->

<form action="Showtimes.php" method="POST">

    
    <select class="selectTheater" name="TheaterOption">
        <option value="#">{Theater}</option>
        <option value="1">AMC Star Fairlane 21</option>
        <option value="2">Henry Ford IMAX</option>
        <option value="3">MJR Allen Park Cinema</option>
        <option value="4">Cinema Detroit</option>
        <option value="5">Detroit Film Theatre</option>
        <option value="6">Cineplex Odeon Devonshire Mall</option>
        <option value="7">MJR Southgate Digital Cinema 20</option>
        
    </select>

    <select class="selectMovie" name="MovieOption">
        <option value="#">{Movie Selection}</option>
        <option value="1">X-Men: Days of Future Past</option>
        <option value="2">Chappie</option>
        <option value="3">Ted</option>
        <option value="4">The Man Who Knew Infinity</option>
        <option value="5">Cooties</option>
        <option value="6">Guardians of the Galaxy</option>
        <option value="7">Live By Night</option>
        <option value="8">Passengers</option>
        <option value="9">Perfect Stranger</option>
        <option value="10">Prisoners</option>
        <option value="11">Prometheus</option>
        <option value="12">Assassin's Creed</option>
    </select>

    <select class="selectDate" name="DateOption">
        <option value="#">{Date}</option>
        <option value="2017-04-11">2017-04-11</option>
        <option value="2017-04-12">2017-04-12</option>
        <option value="2017-04-13">2017-04-13</option>
        <option value="2017-04-14">2017-04-14</option>
    </select>
    <input type="submit" value="Submit">



</form>



<div class='ShowtimesBox'>

<div class="ShowtimesTable">



<?php

// MySQL queries for show times.

$TheaterSelection = $_POST['TheaterOption'];

$MovieSelection = $_POST['MovieOption'];

$DateSelection = $_POST['DateOption'];

$showtimeJoin = "SELECT * FROM Movies AS Mo INNER JOIN ShowtimesJoin AS sj ON Mo.MovieID = sj.ShowtimesMovieID INNER JOIN ShowtimeProfiles AS sp ON sj.ShowtimesProfileID = sp.SP_ID INNER JOIN Theaters AS th ON sj.ShowtimesTheatersID = th.TheaterID WHERE th.TheaterID = $TheaterSelection AND sj.ShowtimesDate = '$DateSelection' AND Mo.MovieID = $MovieSelection";



//While loop to display show times along with movie name, theater name, showtime date, and showtime profiles.  

    foreach($db->query($showtimeJoin) as $showtimeReturn){
        
        echo "<tr>";
        echo "<h2><td>Movie Name: </td><td align='center'>".$showtimeReturn['MovieName']."</td></h2>";
        echo "<p></p>";
        echo "<h2><td>Theater: </td><td align='center'>".$showtimeReturn['TheaterName']."</td></h2>";
        echo "<p></p>";
        echo "<h2><td>Date: </td><td align='center'>".$showtimeReturn['ShowtimesDate']."</td></h2>";
        echo "<p></p>";
        echo "<h2><td>Showtimes: </td><td>".$showtimeReturn['ShowtimeProfiles']."</h2></td>";
        echo "</tr>";
     
    }


?>

</table>

</div>

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

