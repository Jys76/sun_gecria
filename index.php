<?php
    try{ $conn = mysqli_connect("localhost", "root", "", "sun_gecria"); }
    catch(mysqli_sqli_exception $e){ exit("Connection error" ); }

    function get_regioni($conn){
        $sql = "SELECT "
    }
?>

<!DOCTYPE html>
<html>
    <head>
        <title>Gecria</title>
        <h2>Gecria</h2>
    </head>
    <body>
        <form action="" method="post">
            regione
            <select name="cod_regio">
                <option value="">-- scegli --</option>
                <?php
                    
                ?>
            </select>
        </form>
    </body>
<html>
