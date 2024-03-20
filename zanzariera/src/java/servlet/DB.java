/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package servlet;

/**
 *
 * @author simon
 */
public class DB {
    private static final String username = "postgres";
    private static final String password = "admin135";
    private static final String url = "jdbc:postgresql://localhost:5432/prova";

    /**
     * @return the username
     */
    public String getUsername() {
        return username;
    }
    /**
     * @return the password
     */
    public String getPassword() {
        return password;
    }
    
    /**
     * @return the url
     */
    public String getUrl() {
        return url;
    }
}
