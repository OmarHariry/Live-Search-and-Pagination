<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname="lab4";

// Create connection
$conn = new mysqli($servername, $username, $password,$dbname);

// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);}
 if(isset($_POST["page"]))
 {
   
    $page = $_POST["page"];
 }
 else{
     $page=1;
 }
 
 
 $limit = 5;
 $start = ($page-1)*$limit;
// $query = "SELECT * FROM country LIMIT $start,$limit" ;
 
$query= "SELECT course.course_name,course.course_description,department.department_name,professor.professor_name 
FROM course,department,professor 
WHERE course.department_id = department.department_id AND course.professor_id = professor.professor_id LIMIT $limit,$start";
 
 //to find the number of records
 $query2 = "SELECT COUNT(*) AS totalCount FROM course;";
 $result2= $conn->query($query2);
 $total=mysqli_fetch_assoc($result2);
 echo "</br>";


 $pagesNumber = ceil( $total['totalCount']/ $limit);
 $Previous = ($page - 1);
 $Next = ($page + 1);

if($page == $pagesNumber){
    $Next = $page;
}
if($page == 1){
        $Previous= 1;
}

$output='';
  
  // $query = "SELECT * FROM city LIMIT 1,15"; 
   if(isset($_POST["query"])){
    $search = mysqli_real_escape_string($conn, $_POST["query"]);
    $search = trim($search);
    $search = str_replace(' ', '', $search);
    $query = 
    "SELECT course.course_name,course.course_description,department.department_name,professor.professor_name 
    FROM course,department,professor 
    WHERE (course.department_id = department.department_id AND course.professor_id = professor.professor_id) AND
    (course.course_name LIKE '%".$search."%'
    OR course.course_description LIKE '%".$search."%'
    OR department.department_name LIKE '%".$search."%'
    OR professor.professor_name LIKE '%".$search."%'
    OR REPLACE(course.course_name, ' ', '') LIKE '%".$search."%'
    OR REPLACE(course.course_description, ' ', '') LIKE '%".$search."%'
    OR REPLACE(department.department_name, ' ', '') LIKE '%".$search."%'
    OR REPLACE(professor.professor_name, ' ', '') LIKE '%".$search."%')
    LIMIT $start,$limit";
   }
    
   
   $result = $conn->query($query); 
   if(mysqli_num_rows($result) >0){
    $output .= '
    <div class="table-responsive container">
     <table class="table table-striped table-dark">
      <tr>
       <th scope="col">Course Name</th>
       <th scope="col">Course Description</th>
       <th scope="col">Department Name</th>
       <th scope="col">Professor Name</th>
      </tr>';
   
   while($row = mysqli_fetch_array($result))
 {
  $output .= '
   <tr>
    <td>'.$row["course_name"].'</td>
    <td>'.$row["course_description"].'</td>
    <td>'.$row["department_name"].'</td>
    <td>'.$row["professor_name"].'</td>
   </tr>
   </div>
  ';
 }
 echo $output;
}
else
{
 echo "<h2 class='text'>". "Data Not Found!". "</h2>";
}

?>
 <!DOCTYPE html>
 <html lang="en">
 <head>
 <title>Pagination&Live Search</title>
	<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">   
    <link rel="stylesheet" href="styles.css">
 </head>
 <body>
 <div class="container text" >
 <div>
 <div class="text-center">
    <ul class="pagination">
    <li class="page-item"><a class="page-link" href="javascript:void(0)"data-page_number=<?=$Previous?>>Previous</a></li>
      <?php for($i = 1; $i<= $pagesNumber; $i++) : ?>
     <li class="page-item"><a a class="page-link" href="javascript:void(0)"data-page_number=<?=$i?>><?= $i; ?></a></li>
       <?php endfor;?>
       <li class="page-item"><a class="page-link" href="javascript:void(0)"data-page_number=<?=$Next?>>Next</a></li>
    </ul>
</div>
</br>

</div>
</div>
 
 </body>
 </html>

 
