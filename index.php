
<?php
    try{
        $conn = mysqli_connect("localhost", "sun", "sun53", "");
    }
    catch(mysqli_sql_exception $e){ exit("Database connection error"); }

    function carica($conn, $sql){
        $lista = [];
        $res = mysqli_query($conn, $sql),
        while($row = mysqli_fatch_assoc($res)){
            $lista[] = $row;
        }
        return $lista;
    }

    try{
        $regioni = carica($conn, "SELECT ")
    }
?>

<html>
    <head>
        <title>sun_gecria</title>
        <h2>sun_gecria</h2>
    </head>
    <body>
        <form action="">
            select regione
            <select name="cod_regio">
                <option value="">--select--</option>
                
            </select>
        </form>
    </body>
</html>