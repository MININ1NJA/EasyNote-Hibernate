<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
   
</head>
<body>
	<nav class="navbar navbar-dark bg-dark fixed-top">
        <div class="container-fluid" >
          <a class="navbar-brand" href="add_notes.html" style: margin-left: 50px>
           
            EasyNotes
          </a>
          <ul class="nav">
            <li class="nav-item" >
              <a class="nav-link active" aria-current="page" href="home.jsp" style="color :#FFCC00">Home</a>
            </li>
            <li class="nav-item"style="display:flex" ><i class="fa fa-sticky-note" aria-hidden="true" style="color : #FFCC00;font-size:40px;"></i>
              <a class="nav-link" href="shownotes.jsp"style="color : #FFCC00 ; margin-left: -10px;">Show Notes </a>
            </li>
            <li class="nav-item"style="display:flex" ><i class="fa fa-user" aria-hidden="true" style="color : #FFCC00;font-size:40px;"></i>
              <a class="nav-link" href="#"style="color : #FFCC00 ; margin-left: -10px;">Logout</a>
            </li>
            <li class="nav-item">
              <a class="nav-link disabled"></a>
            </li>
          </ul> -->
        </div>
      </nav>
      <div style="  margin-top: 120px; display:flex;  justify-content:center; ">
      <form style="align-items:center; width: 60%;border: 1px solid black ; padding:5%; border-radius : 20px;" action="editbackend.jsp" method="post">
         <div class="mb-3">
          <label for="exampleInputEmail1" class="form-label " >Note ID</label>
          <input type="text" name="id" class="form-control form-control-lg" id="exampleInputEmail1" aria-describedby="emailHelp" style="border: 1px solid black ;">
        </div>
        <div class="mb-3">
          <label for="exampleInputEmail1" class="form-label " >Title</label>
          <input type="text" name="title" class="form-control form-control-lg" id="exampleInputEmail1" aria-describedby="emailHelp" style="border: 1px solid black ;">
        </div>
        <div class="mb-3">
          <label for="textarea" class="form-label" >Notes</label>
          <textarea rows="12" name="paragraph" column = "10" class="form-control" id="exampleInputPassword1" style="border: 1px solid black ;"> </textarea>
        </div>
        <div class="mb-3 form-check">
          <input type="checkbox" class="form-check-input" id="exampleCheck1">
          <label class="form-check-label" for="exampleCheck1">Save and Submit</label>
        </div>
        <button type="submit" class="btn btn-primary">Submit</button>
      </form>
      </div>


      
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
	
</body>
</html>