// GerenciadorDoBancoDeDados
package com.example.kindred;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Component;

@Component
public class GerenciadorDoBancoDeDados {

    private final GerenciadorDeConexao gerenciadorDeConexao;
    private static final String TABLE_CONVERSAS = "conversas";
    private static final String TABLE_AVALIACOES = "avaliacoes";
    private static final String TABLE_RESPOSTAS_CHATBOT = "respostas_chatbot";

    public GerenciadorDoBancoDeDados(GerenciadorDeConexao gerenciadorDeConexao) {
        this.gerenciadorDeConexao = gerenciadorDeConexao;
    }

    public void salvarMensagem(String mensagem, String nomeRemetente, String remetente, String intencao) {
        try (Connection conexao = gerenciadorDeConexao.obterConexao()) {
            String sql = "INSERT INTO " + TABLE_CONVERSAS + " (mensagem, remetente, data_hora, intencao) VALUES (?, ?, ?, ?)";
            try (PreparedStatement declaracao = conexao.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS)) {
                declaracao.setString(1, mensagem);
                declaracao.setString(2, "Chatbot".equals(remetente) ? "Kindred" : nomeRemetente);
                declaracao.setString(3, obterTimestamp());
                declaracao.setString(4, intencao);
                declaracao.executeUpdate();
            }
        } catch (SQLException e) {
            throw new RuntimeException("Erro ao salvar mensagem no banco de dados", e);
        }
    }

    public void salvarAvaliacao(String avaliacao, String nomeRemetente) {
        try (Connection conexao = gerenciadorDeConexao.obterConexao()) {
            String sql = "INSERT INTO " + TABLE_AVALIACOES + " (avaliacao, nomeRemetente, data_hora_avaliacao) VALUES (?, ?, ?)";
            try (PreparedStatement declaracao = conexao.prepareStatement(sql)) {
                declaracao.setString(1, avaliacao);
                declaracao.setString(2, nomeRemetente);
                declaracao.setString(3, obterTimestamp());
                declaracao.executeUpdate();
            }
        } catch (SQLException e) {
            throw new RuntimeException("Erro ao salvar avaliação no banco de dados", e);
        }
    }
    

    private String obterTimestamp() {
        SimpleDateFormat formatoData = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        return formatoData.format(new Date());
    }

    public Map<String, String> obterRespostas() {
        Map<String, String> respostasPorIntencao = new HashMap<>();

        try (Connection conexao = gerenciadorDeConexao.obterConexao()) {
            String sql = "SELECT intencao, resposta FROM " + TABLE_RESPOSTAS_CHATBOT;
            try (PreparedStatement declaracao = conexao.prepareStatement(sql)) {
                try (ResultSet resultado = declaracao.executeQuery()) {
                    while (resultado.next()) {
                        String intencao = resultado.getString("intencao");
                        String resposta = resultado.getString("resposta");
                        respostasPorIntencao.put(intencao, resposta);
                    }
                }
            }
        } catch (SQLException e) {
            throw new RuntimeException("Erro ao obter respostas do banco de dados", e);
        }

        return respostasPorIntencao;
    }

    public List<Map.Entry<String, String>> obterDadosTreinamento() {
    List<Map.Entry<String, String>> dadosTreinamento = new ArrayList<>();
    
    try (Connection conexao = gerenciadorDeConexao.obterConexao()) {
        String sql = "SELECT intencao, dado FROM dados_treinamento";
        try (PreparedStatement declaracao = conexao.prepareStatement(sql)) {
            try (ResultSet resultado = declaracao.executeQuery()) {
                while (resultado.next()) {
                    String intencao = resultado.getString("intencao");
                    String dado = resultado.getString("dado");
                    dadosTreinamento.add(new AbstractMap.SimpleEntry<>(intencao, dado));
                }
            }
        }
    } catch (SQLException e) {
        throw new RuntimeException("Erro ao obter respostas do banco de dados", e);
    }
    
    return dadosTreinamento;
}

}