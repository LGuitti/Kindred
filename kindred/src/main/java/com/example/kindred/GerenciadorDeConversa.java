// ServicoDoChatbot
package com.example.kindred;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Component;

@Component
public class GerenciadorDeConversa {

    private final LogicaChatbot chatbot;
    private final GerenciadorDoBancoDeDados gerenciadorDoBancoDeDados;
    private String nomeUsuarioInteragindo;

    public GerenciadorDeConversa(LogicaChatbot chatbot, GerenciadorDoBancoDeDados gerenciadorDoBancoDeDados) {
        this.chatbot = chatbot;
        this.gerenciadorDoBancoDeDados = gerenciadorDoBancoDeDados;
    }

    public Map<String, String> interagir(String mensagemUsuario, String nomeUsuario) {
        this.nomeUsuarioInteragindo = nomeUsuario;
        String intent = chatbot.identificarIntencaoDaPergunta(mensagemUsuario);
        String respostaChatbot = chatbot.obterRespostaPorIntencao(intent);

        // Salvar a mensagem do usuário, a resposta, a intenção e o remetente no banco de dados
        gerenciadorDoBancoDeDados.salvarMensagem(mensagemUsuario, nomeUsuario, "Usuário", intent);
        gerenciadorDoBancoDeDados.salvarMensagem(respostaChatbot, nomeUsuario, "Chatbot", intent);

        return criarResposta(intent, respostaChatbot);
    }

    public String getNomeUsuarioInteragindo() {
        return this.nomeUsuarioInteragindo;
    }

    public void armazenarNomeUsuario(String nome) {
        this.nomeUsuarioInteragindo = nome;
    }

    private Map<String, String> criarResposta(String intencao, String resposta) {
        Map<String, String> respostaChat = new HashMap<>();
        respostaChat.put("intencao", intencao);
        respostaChat.put("resposta", resposta);
        return respostaChat;
    }

    
}