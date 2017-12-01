<?php
    $servername= "localhost";
    $username = 'mgs_user';
    $password = 'pa55word';
    $dbname = 'CSU_Info_DB';

    $conn=new mysqli($servername, $username, $password, $dbname);
    
if (mysqli_connect_error()) 
{ 
echo "Failed to connect to MySQL: " . mysqli_connect_error(); 
exit();
}
?>
