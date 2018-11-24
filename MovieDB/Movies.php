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


?>


<html>

<head>
<title>UMDB</title>



<style>

body{
    background-color: #252525;
    color: white;
    margin: 0 auto;
}

.tableBox{
    width: 90%;
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

</style>

</head>

<body>

<div class="tableBox">

<table border="2px" cellspacing="1" cellpadding="1">

<col width="203">
<col width="200">
<col width="100">
<col width="100">
<col width="100">
<col width="100">

<tr>

<th align="center">Movie Poster</th>

<th align="center">Movie Name</th>

<th align="center">Meta Score</th>

<th align="center">Release Date</th>

<th align="center">Rating</th>

<th align="center">Run Time</th>

<th align="center">Plot Summary</th>

</tr>


<?php

// Returns all of the information from the Movies relation in a tabular layout.  

    foreach($db->query($movieSelection) as $x){
           
        echo "<tr>";
        
        echo "<td>"; 

        echo "<form action='MovieProfile.php' method='post'>";

        echo "<input name='imgInput' type='image' src='Images/Movies/".$x['MovieID']."M.jpg' alt='' height='289' width='195'/>";

        echo "<input type='hidden' name='movie_page_id' value='".$x['MovieID']."'/>";

        echo "</form>";

        echo "</td>";
        
        echo "<td align='center'>".$x['MovieName']."</td>";
        
        echo "<td align='center'>".$x['MetacriticScore']."</td>";
        
        echo "<td align='center'>".$x['ReleaseDate']."</td>";
        
        echo "<td align='center'>".$x['Rating']."</td>";
        
        echo "<td align='center'>".$x['RunTime']."</td>";
        
        echo "<td align='left'>".$x['PlotSummary']."</td>";

        echo "</tr>";

    }


?>



</table>

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

