<%@page import="java.sql.*,org.hibernate.*,org.hibernate.cfg.*,pojofiles.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"
    />
<meta charset="UTF-8">
<title>Insert title here</title>
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
        color: #fff;
        padding: .4rem 3rem;
        border: .2rem solid #5073FB;
        cursor: pointer;
        font-size: 1rem;

        }
    </style>

</head>
<body>
	<%   
 String title =request.getParameter("title");
 String paragraph =request.getParameter("paragraph");

 try{
    Configuration cfg = new Configuration();
	cfg.configure("hibernate.cfg.xml");
	SessionFactory factory = cfg.buildSessionFactory();
	Session session2 = factory.openSession();
	Transaction t = session2.beginTransaction();
	addnotes n1 = new addnotes();
	n1.setTitle(title);
	n1.setParagraph(paragraph);
	session2.save(n1);
	t.commit();
	session2.close();
	%>
	 <div class="box">
         <div class="check">
             <i class="fas fa-check" style="color:#5073FB;"></i>

         </div>
         <div class="text_suc">
             <h1>Thank You!</h1>
             <p style="margin-top: -10px;">Notes Added Successfully </p>
             <a href="home.jsp"><button class="btn">OKAY</button></a>
         </div>
         </div>
<% 
 }
 catch(Exception e){
       %>
                   
                    <div class="box">
                    <div class="check">
                        <i class="fas fa-check" style="color:#5073FB;"></i>

                    </div>
                    <div class="text_suc">
                        <h1>FAILD!</h1>
                        <p style="margin-top: -10px;">Faild </p>
                        <a href="home.jsp"><button class="btn">OKAY</button></a>
                    </div>
                    </div>


<%} %>
</body>
</html>