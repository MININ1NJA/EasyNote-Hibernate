<%@page import="java.sql.*" %>
<%@page import="java.sql.*,org.hibernate.*,org.hibernate.cfg.*,pojofiles.*,java.util.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"
    />
    <title>Login</title>
    <style>
        body{
            
        }
        .box{
            background-color: white;
            border: 1px solid black;
            height: 300px;
            width: 400px;
            margin-left: 550px;
            margin-top: 150px;
            box-shadow: 12px 12px 12px 12px rgb(191,175,178);

        }
        .check{
            display: flex;
            align-items: center;
            justify-content: center;
            background-color: white;
            height: 50px;
            width: 50px;
            border: 1px solid #5073FB;
            border-radius: 50%;
            margin-left:180px ;
            margin-top: 50px; 
            box-shadow: 1px solid black;       

        }
        .text_suc{
            display: flex;
            flex-direction: column; 
            align-items: center;
            justify-content: center;
            font-family: 'Poppins', sans-serif;

        }
        .btn{
        display: inline-block;
        margin-top: .5rem;
        background: #5073FB;
        color: white;
        padding: .4rem 3rem;
        border: .2rem solid #5073FB;
        cursor: pointer;
        font-size: 1rem;

        }
    </style>

</head>
<body>
<%
    String email =request.getParameter("email");
    String password =request.getParameter("password");
    
    try {
	 Configuration cfg = new Configuration();
		cfg.configure("hibernate.cfg.xml");
		SessionFactory factory = cfg.buildSessionFactory();
		Session session2 = factory.openSession();
	    Query query = session2.createQuery("from users where email=:user_email and password=:upassword");
	    query.setParameter("user_email", email);
	    query.setParameter("upassword", password);
	    List<users> list = query.list();
	    if (list.size() >= 1) {
			session.setAttribute("name", list.get(0).getName());
			session.setAttribute("Email", list.get(0).getEmail());
                    %>
                    <div class="box">
                    <div class="check">
                        <i class="fas fa-check" style="color: #5073FB;"></i>

                    </div>
                    <div class="text_suc">
                        <h1><%	
                            out.print(list.get(0).getName());
                        %>
                        </h1>
                        <p style="margin-top: -10px;">You login successfully  </p>
                        <a href="home.jsp"><button class="btn">OKAY</button></a>
                    </div>
                    </div>
                    <%
                    }
                    else{
      
                     %>
                     <div class="box">
                    <div class="check">
                        <i class="fas fa-check" style="color: #5073FB;"></i>

                    </div>
                    <div class="text_suc">
                        <h1>Faild!</h1>
                        <p style="margin-top: -10px;">User Or Password is incorrect </p>
                        <a href="home.jsp"><button class="btn">OKAY</button></a>
                    </div>
                    </div>
                    <%
    }
                    
                   
                
                    
    }catch(Exception e){
    
    out.print(e);
    }
%>
</body>
</html>