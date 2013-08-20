<?php

include("dbcon.php");


$XYZona = $_REQUEST['XYZona'];
$Zona = $_REQUEST['Zona'];
$ZonaColor = '#CCCCC' ; //$_REQUEST['ZonaColor'];

$XYZona = str_replace("(", "", $XYZona);
$XYZona = str_replace(")", ",", $XYZona);
$arr_coords = explode(",", $XYZona);



$par = 0;
$lat = "";
$lng = "" ;
foreach ($arr_coords as $value)
{
	
	if ($par == 0) // entonces es lat
    {
        $lat = $value;
        $par = 1;

	}else {

        $lng = $value;
        $par = 0;

    }

    // insercion del par
    if (($lng != "") && ($lat != ""))
    {
    	$query = "INSERT INTO zonas ";
    	$query .= "(Zona_desc,Latitud,Longitud,Formato,Color) ";
    	$query .= " VALUES ('".$Zona."', '".$lat."', '".$lng."','GeoCoord','".$ZonaColor."'); ";
        $lat = "";
        $lng = "";
        $result = mysql_query($query);

       


    }




}

 header('Content-type: application/json'); 
 echo json_encode($result);
 


?>