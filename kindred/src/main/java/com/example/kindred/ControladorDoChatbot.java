// ControladorDoChatbot
package com.example.kindred;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class ControladorDoChatbot {
    private final GerenciadorDeConversa GerenciadorDeConversa;
    private final GerenciadorDoBancoDeDados gerenciadorDoBancoDeDados;
   
    public ControladorDoChatbot(GerenciadorDeConversa GerenciadorDeConversa, GerenciadorDoBancoDeDados gerenciadorDoBancoDeDados) {
        this.GerenciadorDeConversa = GerenciadorDeConversa;
        this.gerenciadorDoBancoDeDados = gerenciadorDoBancoDeDados;
    }

    @PostMapping("/avaliar")
    @ResponseBody
    public Map<String, String> avaliar(@RequestParam String avaliacao) {
        String nomeUsuario = GerenciadorDeConversa.getNomeUsuarioInteragindo();
        gerenciadorDoBancoDeDados.salvarAvaliacao(avaliacao, nomeUsuario);

        Map<String, String> response = new HashMap<>();
        response.put("feedback", "Avaliação recebida com sucesso.");

        return response;
    }

    @PostMapping("/armazenarNome")
    @ResponseBody
    public Map<String, String> capturarNome(@RequestParam String nomeUsuario) {
        GerenciadorDeConversa.armazenarNomeUsuario(nomeUsuario);
        Map<String, String> response = new HashMap<>();
        response.put("redirect", "/chat");
        return response;
    }

    @PostMapping("/interagir")
    @ResponseBody
    public Map<String, String> interagir(@RequestParam String mensagemUsuario) {
        String nomeUsuario = GerenciadorDeConversa.getNomeUsuarioInteragindo();
        Map<String, String> response = GerenciadorDeConversa.interagir(mensagemUsuario, nomeUsuario);

        if ("Encerramento".equals(response.get("intencao"))) {
            response.put("mostrarAvaliacao", "true");
            System.out.println("Intenção: Encerramento - mostrarAvaliacao definido como true.");
        }

        return response;
    }

    @GetMapping("/welcome")
    public String paginaDeBoasVindas() {
        return "welcome";
    }

    @GetMapping("/chat")
    public String paginaDoChat() {
        return "chat";
    }
}
