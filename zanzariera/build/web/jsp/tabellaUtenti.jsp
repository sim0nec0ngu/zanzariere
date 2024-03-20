<%-- 
    Document   : tabellaUtenti
    Created on : 28 feb 2024, 17:04:25
    Author     : simon
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tabella Utenti</title>
    </head>
    <body> 
        <table border ="1">
            <thead>
            <tr>
                <th>ID</th>
                <th>Nome</th>
                <th>Cognome</th>
                <th>Username</th>
                <th>Password</th>
            </tr>
        </thead>

            <% 
                Class.forName("com.mysql.cj.jdbc.Driver");
                String url = "jdbc:mysql://localhost:3306/miosito";
                Connection conn = DriverManager.getConnection(url, "root", null);
                Statement stmt = conn.createStatement();

                String query = "SELECT * FROM utenti";
//nome,cognome,username,password
                ResultSet rs = stmt.executeQuery(query);
                while(rs.next()){
                    int id = rs.getInt("id");
                    String nome = rs.getString("nome");
                    String cognome = rs.getString("cognome");
                    String username = rs.getString("username");
                    String password = rs.getString("password");
            %>
            <tr>
                    <td> <%= id%></td>
                    <td> <%= nome%></td>               
                    <td> <%= cognome%></td>               
                    <td> <%= username%></td>              
                    <td> <%= password%></td>

            </tr>


            <%
        }
    rs.close();
    stmt.close();
    conn.close();
            %> 
        </table> 
    </body>
</html>
