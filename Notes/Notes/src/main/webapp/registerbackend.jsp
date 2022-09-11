
<%@page import="java.sql.*,org.hibernate.*,org.hibernate.cfg.*,pojofiles.*" %>
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
    <title>Register</title>
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
            border: 1px solid red;
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
        background: red;
        color: #fff;
        padding: .4rem 3rem;
        border: .2rem solid red;
        cursor: pointer;
        font-size: 1rem;

        }
    </style>

</head>
<body>
<%   
 String name =request.getParameter("name");
 String email =request.getParameter("email");
 String phone =request.getParameter("phone");
 String password =request.getParameter("password");
 
 try{
    Configuration cfg = new Configuration();
	cfg.configure("hibernate.cfg.xml");
	SessionFactory factory = cfg.buildSessionFactory();
	Session session2 = factory.openSession();
	Transaction t = session2.beginTransaction();
	users u1 = new users();
	u1.setName(name);
	u1.setEmail(email);
	u1.setMobile(phone);
	u1.setPassword(password);
	session2.save(u1);
	t.commit();
	session2.close();
	%>
	 <div class="box">
         <div class="check">
             <i class="fas fa-check" style="color:red;"></i>

         </div>
         <div class="text_suc">
             <h1>Thank You!</h1>
             <p style="margin-top: -10px;">User Register Successfully </p>
             <a href="login.jsp"><button class="btn">OKAY</button></a>
         </div>
         </div>
<% 
 }
 catch(Exception e){
       %>
                   
                    <div class="box">
                    <div class="check">
                        <i class="fas fa-check" style="color:red;"></i>

                    </div>
                    <div class="text_suc">
                        <h1>FAILD!</h1>
                        <p style="margin-top: -10px;">Registration Faild </p>
                        <a href="index.jsp"><button class="btn">OKAY</button></a>
                    </div>
                    </div>


<%} %>
