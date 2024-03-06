/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.cadastro.conexao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class dataBase {

    public static Connection conectar() throws SQLException {

        String user = "postgres";
        String password = "maranaT@05";
        String url = "jdbc:postgresql://localhost:5432/cad";

        try {
            // Carregando o driver JDBC do PostgreSQL
            Class.forName("org.postgresql.Driver");

            Connection conexao = DriverManager.getConnection(url, user, password);
            System.out.println("Conexão bem-sucedida!!");
            return conexao;
        } catch (ClassNotFoundException | SQLException ex) {
            ex.printStackTrace(); // Mostrar o erro por não ter conectado
            System.out.println("Conexão Falhou!!");
        }
        return null;
    }
}
