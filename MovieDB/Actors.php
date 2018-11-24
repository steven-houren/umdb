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

$actorSelection = "SELECT * FROM actors";


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


.ActorsBox{
    width: 990px;
    margin-top: 100px;
    margin-left: auto;
    margin-right: auto;
    
}

</style>

</head>

<body>

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

// Returns all actor information associated with the actor ID passed through this page. 

    foreach($db->query($actorSelection) as $actorReturn){
       
        echo "<tr>";
        echo "<td>"; 
        echo "<form action='ActorProfile.php' method='post'>";
        echo "<input name='imgInput' type='image' src='Images/Actors/".$actorReturn['Actor_ID']."A.jpg' alt='' height='203' width='152'/>";
        echo "<input type='hidden' name='actor_page_id' value='".$actorReturn['Actor_ID']."'/>";
        echo "</form>";
        echo "</td>";
        echo "<td align='center'>".$actorReturn['Fname']."</td>";
        echo "<td align='center'>".$actorReturn['Lname']."</td>";
        echo "<td align='center'>".$actorReturn['Birthdate']."</td>";
        echo "<td align='center'>".$actorReturn['Hometown']."</td>";
        echo "</tr>";
     
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

