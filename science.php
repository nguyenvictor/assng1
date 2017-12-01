<?php
require_once('database.php');

$query ="SELECT classID,professorID,name,class_Credit,location,time,day,section
            FROM class
            WHERE classID IN (7,8,9)";
            
            $class = $conn->query($query);
            ?>
            
<html>
    
    <head>
        <title>Science Courses</title>
    </head>
    
    
    <style>
#customers {
    font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
    border-collapse: collapse;
    width: 100%;
}

#customers td, #customers th {
    border: 1px solid #ddd;
    padding: 8px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
    padding-top: 12px;
    padding-bottom: 12px;
    text-align: left;
    background-color: #0000ff;
    color: white;
}
</style>

    <body>
        <div class = "classBody">
            <link rel="stylesheet" type="text/css" href="main.css"/>
            <h2>Science Courses</h2>
            <table id = "customers">
                <tr>
                    <th>Class ID</th>
                    <th>Professor ID</th>
                    <th>Name</th>
                    <th>Credit</th>
                    <th>Location</th>
                    <th>Time</th>
                    <th>Day</th>
                    <th>Section</th>
                </tr>
                <?php foreach($class as $class) : ?>
                <tr>
                    <td><?php echo $class['classID']; ?></td>
                    <td><?php echo $class['professorID']; ?></td>
                    <td align="center"><?php echo $class['name']; ?></td>
                    <td><?php echo $class['class_Credit']; ?></td>
                    <td><?php echo $class['location']; ?></td>
                    <td align="center"><?php echo $class['time']; ?></td>
                    <td align="center"><?php echo $class['day']; ?></td>
                    <td align="center"><?php echo $class['section']; ?></td>
                    
                </tr>
                <?php endforeach; ?>
            </table>
        </div>
        
    </body>
</html>