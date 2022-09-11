<%@page import="java.sql.*"%>
<%@page
	import="java.sql.*,org.hibernate.*,org.hibernate.cfg.*,pojofiles.*,java.util.*"%>
	
	<%
Configuration cfg = new Configuration();
cfg.configure("hibernate.cfg.xml");
SessionFactory factory = cfg.buildSessionFactory();
Session session2 = factory.openSession();
Query query = session2.createQuery("from addnotes");
List<addnotes> list = query.list();

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
     <link href="https://cdn.jsdelivr.net/npm/remixicon@2.5.0/fonts/remixicon.css" rel="stylesheet">
    <style>
table {
  font-family: Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

td, th {
  border: 1px solid #ddd;
  padding: 8px;
}
tr:nth-child(even){background-color: #f2f2f2;}

tr:hover {background-color: #ddd;}

th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #04AA6D;
  color: white;
}
</style>
</head>
<body>
	<nav class="navbar navbar-dark bg-dark fixed-top">
        <div class="container-fluid" >
          <a class="navbar-brand" href="#" style: margin-left: 50px>
            
            EasyNotes
          </a>
          <ul class="nav">
            <li class="nav-item" >
              <a class="nav-link active" aria-current="page" href="home.jsp" style="color :#FFCC00">Home</a>
            </li>
            <li class="nav-item"style="display:flex" ><i class="fa fa-sticky-note" aria-hidden="true" style="color : #FFCC00;font-size:40px;"></i>
              <a class="nav-link" href="home.jsp" style="color : #FFCC00 ; margin-left: -10px;">Add Notes</a>
            </li>
            <li class="nav-item">
              <a class="nav-link disabled"></a>
            </li>
          </ul> -->
        </div>
      </nav>


      <div class="notes" style="margin-top:100px;align-items:center; width: 100%; padding:5%;">
        <table id="" >
            <tr>
            	<th>ID</th>
                <th>TITLE</th>
                <th>PARAGRAPH</th>
                <th>ACTIONS</th>

            </tr>
            <%for(addnotes notes:list){ %>
            <tr>
                <td><%=notes.getNid() %>	</td>                
                <td><%=notes.getTitle() %>	</td>
                <td><%=notes.getParagraph() %></td>
                <td>
                  
                  <a class="ri-edit-line edit" href="editnotes.jsp" ></a>
                  <a class="ri-delete-bin-line delete" href="deletenotes.jsp?id=<%=notes.getNid()%>"></a>
                </td>
            </tr>
            <%} %>
                  
        </table>
      </div>


      
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>

</body>
</html>