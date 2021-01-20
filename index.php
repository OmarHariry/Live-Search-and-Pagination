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
        <form>
        <nav class="navbar navbar-default">
        <div class="container">
          <div class="navbar-header">
            <div class="form-group">
            <div class="input-group">
            <label for="search_text">Search</span>
            <input type="text" name="search_text" id="search_text" placeholder="Search By Any Field" class="form-control" />
            <div class="table-responsive" id="dynamic_content"></div>
           </div> 
        </div>
        </div>
        </nav>
        </form>
</body>
</html>
<script>
  $(document).ready(function(){
    load_data(1);
    function load_data(page, query = '')
    {
      $.ajax({
        url:"search.php",
        method:"POST",
        data:{page:page, query:query},
        success:function(data)
        {
          $('#dynamic_content').html(data);
        }
      });
    }

    $(document).on('click', '.page-link', function(){
    
      var page = $(this).data('page_number');
      var query = $('#search_text').val();
      load_data(page, query);
    });

    $('#search_text').keyup(function(){
      var query = $('#search_text').val();
      load_data(1, query);
    });

  });
</script>
