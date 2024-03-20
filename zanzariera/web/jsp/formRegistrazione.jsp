<%-- 
    Document   : Registrazione
    Created on : 28 feb 2024, 17:06:09
    Author     : simon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="../JS/JQuery.js" type="text/javascript"></script>
        <script src="../JS/formRegistrazione.js" type="text/javascript"></script>
        
        <title>Registrati</title>
    </head>
   <body>
    <h1>Registrazione</h1>
    <form id="registrazioneForm" action="registrazioneSito.jsp" method="post">
        <label for="nome">Nome:</label>
        <input type="text" id="nome" name="nome" required><br><br>

        <label for="cognome">Cognome:</label>
        <input type="text" id="cognome" name="cognome" required><br><br>

        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required><br><br>
        
        <label for="username">Username:</label>
        <input type="text" id="username" name="username" required><br><br>

        <label for="password">Password:</label>
        <input type="password" id="password" name="password" required><br><br>

        <label for="conferma_password">Conferma Password:</label>
        <input type="password" id="conferma_password" name="conferma_password" required><br><br>

        <input type="submit" value="Registrati">
        
    </form>
</body>
</html>
