package com.example.kindred;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Properties;
import java.util.Random;

import org.springframework.stereotype.Component;

import edu.stanford.nlp.ling.CoreAnnotations;
import edu.stanford.nlp.ling.CoreLabel;
import edu.stanford.nlp.pipeline.Annotation;
import edu.stanford.nlp.pipeline.StanfordCoreNLP;
import edu.stanford.nlp.util.CoreMap;
import opennlp.tools.doccat.DoccatModel;
import opennlp.tools.doccat.DocumentCategorizerME;

@Component
public class LogicaChatbot {

    private final StanfordCoreNLP pipeline;
    private final GerenciadorDoBancoDeDados gerenciadorDoBancoDeDados;
    private final Random random;
    private final DocumentCategorizerME categorizador;
    private final Map<String, String> respostasPorIntencao;
    private final List<String> palavrasIgnoradas;

    public LogicaChatbot(GerenciadorDoBancoDeDados gerenciadorDoBancoDeDados) {
        this.pipeline = inicializarPipeline();
        this.gerenciadorDoBancoDeDados = gerenciadorDoBancoDeDados;
        this.random = new Random();
        this.categorizador = inicializarClassificadorIntencoes();
        this.respostasPorIntencao = new HashMap<>();
        this.palavrasIgnoradas = Arrays.asList("o", "e", "de", "para", "com", "uma", "um");
        inicializar();
    }

    private void inicializar() {
        carregarRespostasDoBanco();
    }

    private StanfordCoreNLP inicializarPipeline() {
        Properties props = new Properties();
        props.setProperty("annotators", "tokenize,ssplit,pos,parse,lemma");
        return new StanfordCoreNLP(props);
    }

    private DocumentCategorizerME inicializarClassificadorIntencoes() {
        try (InputStream modeloEntrada = new FileInputStream(new File("modelo_treinado.bin"))) {
            DoccatModel modelo = new DoccatModel(modeloEntrada);
            return new DocumentCategorizerME(modelo);
        } catch (IOException e) {
            e.printStackTrace();
            throw new RuntimeException("Erro ao inicializar o classificador de intenções.", e);
        }
    }

    private void carregarRespostasDoBanco() {
        respostasPorIntencao.putAll(gerenciadorDoBancoDeDados.obterRespostas());
    }

    public String identificarIntencaoDaPergunta(String pergunta) {
        pergunta = pergunta.toLowerCase(Locale.ROOT);
        String[] palavras = pergunta.split(" ");
        palavras = preprocessarPalavras(palavras);

        System.out.println("Pergunta: " + pergunta);
double[] probabilidades = categorizador.categorize(palavras);

        String intencao = categorizador.getBestCategory(probabilidades);
        double maxProbabilidade = probabilidades[categorizador.getIndex(intencao)];

        System.out.println("Intenção detectada: " + intencao + " - Probabilidade: " + maxProbabilidade*100 + " % ");

        return (maxProbabilidade > 0.5) ? intencao : "intencao_desconhecida";
    }

    private String[] preprocessarPalavras(String[] palavras) {
        List<String> palavrasProcessadas = new ArrayList<>();
    
        for (String palavra : palavras) {
            if (!ePalavraIgnorada(palavra.toLowerCase(Locale.ROOT))) {
                String  palavraProcessada = removerLetrasRepetitivas(palavra);
                palavraProcessada = lematizarPalavra(palavraProcessada);
                palavrasProcessadas.add(palavraProcessada);
            }
        }
    
        return palavrasProcessadas.toArray(new String[0]);
    }
    
    private String removerLetrasRepetitivas(String palavra) {
        char[] caracteres = palavra.toCharArray();
        StringBuilder resultado = new StringBuilder();
        resultado.append(caracteres[0]);
    
        for (int i = 1; i < caracteres.length; i++) {
            
            if (caracteres[i] != caracteres[i - 1] || (i > 1 && caracteres[i] != caracteres[i - 2])) {
                resultado.append(caracteres[i]);
            }
        }
    
        return resultado.toString();
    }
    

    private String lematizarPalavra(String palavra) {
        Annotation documento = new Annotation(palavra);
        pipeline.annotate(documento);
        List<CoreMap> sentencas = documento.get(CoreAnnotations.SentencesAnnotation.class);

        if (sentencas != null && !sentencas.isEmpty()) {
            CoreMap sentenca = sentencas.get(0);
            for (CoreLabel token : sentenca.get(CoreAnnotations.TokensAnnotation.class)) {
                return token.get(CoreAnnotations.LemmaAnnotation.class);
            }
        }

        return palavra;
    }

    private boolean ePalavraIgnorada(String palavra) {
        return palavrasIgnoradas.contains(palavra);
    }

    public String obterRespostaPorIntencao(String intencao) {
        List<String> respostas = obterRespostasParaIntencao(intencao);

        if (!respostas.isEmpty()) {
            int indiceRespostaAleatoria = random.nextInt(respostas.size());
            return respostas.get(indiceRespostaAleatoria);
        } else {
            return "Desculpe, não entendi. Pode reformular sua pergunta?";
        }
    }

    private List<String> obterRespostasParaIntencao(String intencao) {
        return Arrays.asList(
                respostasPorIntencao.getOrDefault(intencao, "Desculpe, não entendi. Pode reformular sua pergunta?")
                        .split(";")
        );
    }
}
