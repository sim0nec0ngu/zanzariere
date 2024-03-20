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
        <link href="../Bootstrap/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <script src="../JS/formInvioCatalogo.js" type="text/javascript"></script>
        <script src="../Bootstrap/bootstrap.bundle.min.js" type="text/javascript"></script>
        <script src="../Bootstrap/popper.min.js" type="text/javascript"></script>
        <title>Registrati</title>
    </head>
   <body>
    <div class="container">
        <h1 class="mt-5">Registrazione</h1>
        <form action="registrazioneInvioCatalogo.jsp" method="post">
            <div class="mb-3">
                <label for="nome" class="form-label">Nome:</label>
                <input type="text" class="form-control" id="nome" name="nome" required>
            </div>

            <div class="mb-3">
                <label for="cognome" class="form-label">Cognome:</label>
                <input type="text" class="form-control" id="cognome" name="cognome" required>
            </div>
            
            <div class="mb-3">
                <label for="cap" class="form-label">CAP:</label>
                <input type="text" class="form-control" id="cap" name="cap" required>
            </div>
            
            <div class="mb-3">
                <label for="indirizzoResidenza" class="form-label">Indirizzo di Residenza:</label>
                <input type="text" class="form-control" id="indirizzoResidenza" name="indirizzoResidenza" required>
            </div>
            
            <div class="mb-3">
                <label for="numeroCivicoResidenza" class="form-label">Numero civico:</label>
                <input type="text" class="form-control" id="numeroCivicoResidenza" name="numeroCivicoResidenza" required>
            </div>
            
            <div class="mb-3">
                <label for="cittaResidenza" class="form-label">Città:</label>
                <input type="text" class="form-control" id="cittaResidenza" name="cittaResidenza" required>
            </div>
            
            <div class="mb-3">
                <label for="indirizzoDomicilio" class="form-label">Indirizzo di Domicilio, se diverso dalla residenza:</label>
                <input type="text" class="form-control" id="indirizzoDomicilio" name="indirizzoDomicilio">
            </div>
            
            <div class="mb-3">
                <label for="numeroCivicoDomicilio" class="form-label">Numero civico:</label>
                <input type="text" class="form-control" id="numeroCivicoDomicilio" name="numeroCivicoDomicilio">
            </div>
            
            <div class="mb-3">
                <label for="cittaDomicilio" class="form-label">Città:</label>
                <input type="text" class="form-control" id="cittaDomicilio" name="cittaDomicilio">
            </div>
            
            <div class="mb-3">
                <label for="DataNascita" class="form-label">Data di nascita:</label>
                <input type="date" class="form-control" id="DataNascita" name="DataNascita" required>
            </div>

            <div class="mb-3">
                <label for="email" class="form-label">Email:</label>
                <input type="email" class="form-control" id="email" name="email" required>
            </div>
            
            <div class="mb-3">
                <label for="telefono" class="form-label">Telefono:</label>
                <input type="text" class="form-control" id="telefono" name="telefono" required>
            </div>
            
            <div class="mb-3">
                <label for="username" class="form-label">Username:</label>
                <input type="text" class="form-control" id="username" name="username" required>
            </div>

            <div class="mb-3">
                <label for="password" class="form-label">Password:</label>
                <input type="password" class="form-control" id="password" name="password" required>
            </div>

            <div class="mb-3">
                <label for="confermaPassword" class="form-label">Conferma Password:</label>
                <input type="password" class="form-control" id="confermaPassword" name="confermaPassword" required oninput="checkPasswordMatch()">
                <span id="passwordMatch"></span>
            </div>

            <button type="submit" class="btn btn-primary">Invia</button>
        </form>
    </div>
</body>
</html>
