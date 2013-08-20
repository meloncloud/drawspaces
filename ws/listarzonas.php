<?
include("dbcon.php");


//$tabla = $_REQUEST['tabla'];

return_return_table_detail();



function return_return_table_detail($tabla = 1)
{

$sql = "select * from zonas";
$result = mysql_query($sql);

$posts = array();
$count = 0 ;
if(mysql_num_rows($result)) {
	header('Content-type: application/json');
	echo '{
		"result":  
		[';
    while($post = mysql_fetch_assoc($result)) {
		
		
		
     
		$field = $post['Latitud'];	 
		$type = $post['Longitud'];	
		
	 	
	 	if ($count == 1){ echo ',' ;}
		$count = 1 ;
		echo ' 
		{
		"Lat": "'.$field.'",
		"longi": "'.$type.'"
		}';
		
	 }
	echo ']}';
}



} 

?>