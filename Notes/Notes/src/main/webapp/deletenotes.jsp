<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page
	import="java.sql.*,org.hibernate.*,org.hibernate.cfg.*,pojofiles.*,java.util.*"%>

<%
String id = request.getParameter("id");
Configuration cfg = new Configuration();
cfg.configure("hibernate.cfg.xml");
SessionFactory factory = cfg.buildSessionFactory();
Session session2 = factory.openSession();
Transaction t = session2.beginTransaction();
Query query = session2.createQuery("Delete from addnotes Where id=:uid");
query.setParameter("uid", Integer.parseInt(id));
query.executeUpdate();
t.commit();
response.sendRedirect("shownotes.jsp");
%>