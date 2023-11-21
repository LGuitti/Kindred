// GerenciadorDeConexao
package com.example.kindred;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import org.springframework.stereotype.Controller;

@Controller
public class GerenciadorDeConexao {

    private static final String URL = "jdbc:mysql://localhost/chatbot";
    private static final String NOME_DE_USUARIO = "root";
    private static final String SENHA = "root";

    public Connection obterConexao() {
        try {
            return DriverManager.getConnection(URL, NOME_DE_USUARIO, SENHA);
        } catch (SQLException e) {
            throw new RuntimeException("Erro ao conectar ao banco de dados", e);
        }
    }
}