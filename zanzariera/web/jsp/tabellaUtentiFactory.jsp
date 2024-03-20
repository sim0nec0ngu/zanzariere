<%-- 
    Document   : tabellaUtentiFactory
    Created on : 5 mar 2024, 11:46:15
    Author     : simon
--%>

<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%@page import="java.util.*"%>
<%@page import="servlet.DB"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.ParseException"%>

<!DOCTYPE html>
<html>
<head>
    <title>Tabella Utenti</title>
</head>
<body>
    <table border="1">
        <tr>
            <th>ID</th>
            <th>Nome</th>
            <th>Cognome</th>
            <th>CAP</th>
            <th>Indirizzo Residenza</th>
            <th>Numero Civico Residenza</th>
            <th>Città Residenza</th>
            <th>Indirizzo Domicilio</th>
            <th>Numero Civico Domicilio</th>
            <th>Città Domicilio</th>
            <th>Email</th>
            <th>Telefono</th>
            <th>Data di Nascita</th>
        </tr>
<% //------------------------lasciare tutto-----------------------------------
    Connection conn = null;
    try {
        // Caricamento del driver JDBC
        Class.forName("org.postgresql.Driver");
        
        // Creazione dell'oggetto DB
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
        
        //------------------------sinoa a qui -----------------------------------
        
        // Dichiarazione della query SQL
        String query = "SELECT * FROM utentiInvioCatalogo";
        
        // Creazione dello statement per eseguire la query
        PreparedStatement statement = conn.prepareStatement(query);
            
        // Esecuzione della query e ottenimento del risultato
        ResultSet rs = statement.executeQuery();

        // Dati ricevuti dal form e iterati
        while (rs.next()) {
            int id = rs.getInt("id");
            String nome = rs.getString("nome");
            String cognome = rs.getString("cognome");
            String cap = rs.getString("cap");
            String indirizzoResidenza = rs.getString("indirizzo_Residenza");
            String numeroCivicoResidenza = rs.getString("numero_civico_residenza");
            String cittaResidenza = rs.getString("citta_residenza");
            String indirizzoDomicilio = rs.getString("indirizzo_domicilio");
            String numeroCivicoDomicilio = rs.getString("numero_civico_domicilio");
            String cittaDomicilio = rs.getString("citta_domicilio");
            String email = rs.getString("email");
            String telefono = rs.getString("telefono");
            
            java.sql.Date dataNascita = rs.getDate("data_nascita");
            String dataNascitaStr;
            SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
            if (dataNascita != null) {
                dataNascitaStr = dateFormat.format(dataNascita);
            } else {
                dataNascitaStr = "Data di nascita non disponibile";
            }
            
            %>
        <tr>
            <td><%= id %></td>
            <td><%= nome %></td>
            <td><%= cognome %></td>
            <td><%= cap %></td>
            <td><%= indirizzoResidenza %></td>
            <td><%= numeroCivicoResidenza %></td>
            <td><%= cittaResidenza %></td>
            <td><%= indirizzoDomicilio %></td>
            <td><%= numeroCivicoDomicilio %></td>
            <td><%= cittaDomicilio %></td>
            <td><%= email %></td>
            <td><%= telefono %></td>
            <td><%= dataNascitaStr %></td>
        </tr>
        <% 
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
    </table>
    </body>
</html>
