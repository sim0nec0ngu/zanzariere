<%-- 
    Document   : submit
    Created on : 30 gen 2024, 14:50:53
    Author     : simone
--%>
<%@page import="java.sql.*"%>
<%@ page import="servlet.DB" %>
<%@ page import="java.text.SimpleDateFormat" %>


<%
    Connection conn = null;
    try {
        // Caricamento del driver JDBC
        Class.forName("org.postgresql.Driver");
        
        //creo l'oggetto db di DB
        DB db = new DB();
        
        // URL di connessione al database PostgreSQL
        String url = db.getUrl();
        
        // Nome utente e password per la connessione al database
        String username = db.getUsername();
        String password = db.getPassword();
        
        // Connessione al database PostgreSQL
        conn = DriverManager.getConnection(url, username, password);
        
        // Connessione riuscita
        System.out.println("Connessione al database PostgreSQL riuscita!");
        
        // Dati ricevuti dal form
        String nome = request.getParameter("nome");
        String cognome = request.getParameter("cognome");
        String cap = request.getParameter("cap");
        String indirizzoResidenza = request.getParameter("indirizzoResidenza");
        String numeroCivicoResidenza = request.getParameter("numeroCivicoResidenza");
        String cittaResidenza = request.getParameter("cittaResidenza");
        String indirizzoDomicilio = request.getParameter("indirizzoDomicilio");
        String numeroCivicoDomicilio = request.getParameter("numeroCivicoDomicilio");
        String cittaDomicilio = request.getParameter("cittaDomicilio");
        String dataNascitaStr = request.getParameter("DataNascita");
        String email = request.getParameter("email");
        String telefono = request.getParameter("telefono");

        // Converti la stringa della data in formato java.sql.Date
        java.sql.Date dataNascita = null;
        try {
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            java.util.Date parsedDate = sdf.parse(dataNascitaStr);
            dataNascita = new java.sql.Date(parsedDate.getTime());
        } catch (Exception e) {
            out.println("Si è verificato un errore durante la conversione della data: " + e.getMessage());
        }
    
    // Query SQL per l'inserimento dei dati
    String sql = "INSERT INTO utentiInvioCatalogo (nome, cognome, cap, indirizzo_residenza, " +
                 "numero_civico_residenza, citta_residenza, indirizzo_domicilio, " +
                 "numero_civico_domicilio, citta_domicilio, data_nascita, email, telefono) " +
                 "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?,?)";
     
    PreparedStatement statement = conn.prepareStatement(sql);
    statement.setString(1, nome);
    statement.setString(2, cognome);
    statement.setString(3, cap);
    statement.setString(4, indirizzoResidenza);
    statement.setString(5, numeroCivicoResidenza);
    statement.setString(6, cittaResidenza);
    statement.setString(7, indirizzoDomicilio);
    statement.setString(8, numeroCivicoDomicilio);
    statement.setString(9, cittaDomicilio);
    statement.setDate(10, dataNascita);
    statement.setString(11, email);
    statement.setString(12, telefono);

    // Esegui la query di inserimento e controlla se è stata eseguita con successo
    int rowsInserted = statement.executeUpdate();
    if (rowsInserted > 0) {
        out.println("Il nuovo utente è stato inserito con successo.");
        response.sendRedirect("../zanzariere top di gamma.jsp");
    }
    
    
    
    
    } catch (ClassNotFoundException e) {
        // Errore: driver JDBC non trovato
        System.out.println("Errore: driver JDBC non trovato: " + e.getMessage());
    } catch (SQLException e) {
        // Errore durante la connessione al database
        System.out.println("Errore durante la connessione al database: " + e.getMessage());
    } finally {
        // Chiusura della connessione al database
        if (conn != null) {
            try {
                conn.close();
            } catch (SQLException e) {
                // Errore durante la chiusura della connessione
                System.out.println("Errore durante la chiusura della connessione: " + e.getMessage());
            }
        }
    }
    
%>
