<%-- 
    Document   : submit
    Created on : 30 gen 2024, 14:50:53
    Author     : simone
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>

<%

    
    String cognome = request.getParameter("cognome");
    String nome = request.getParameter("nome");
    String username = request.getParameter("username");   
    String password = request.getParameter("password");
    int livello = 5;
    
    Class.forName("com.mysql.cj.jdbc.Driver");
    String url = "jdbc:mysql://localhost:3306/miosito";

Connection conn = DriverManager.getConnection(url, "root", null); 

String query ="INSERT INTO utenti "
        + "(nome,cognome,username,password,livello)"
        + "VALUES('"+nome+"','"+cognome+"','"+username+"','"+password+"','"+livello+"')";

out.print(query);

Statement stmt = conn.createStatement();
int numRighe = stmt.executeUpdate(query);

if (numRighe != 1){
    response.sendRedirect("../zanzariere top di gamma.jsp");
    
    }
    else{
    response.sendRedirect("tabellaUtenti.jsp");

    }

stmt.close();
conn.close();
%>