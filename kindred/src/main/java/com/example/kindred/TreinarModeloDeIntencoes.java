package com.example.kindred;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

import opennlp.tools.doccat.DoccatFactory;
import opennlp.tools.doccat.DoccatModel;
import opennlp.tools.doccat.DocumentCategorizerME;
import opennlp.tools.doccat.DocumentSample;
import opennlp.tools.tokenize.SimpleTokenizer;
import opennlp.tools.util.ObjectStream;
import opennlp.tools.util.ObjectStreamUtils;
import opennlp.tools.util.TrainingParameters;

public class TreinarModeloDeIntencoes {

    public static void main(String[] args) throws IOException {
        // Conectar ao banco de dados e obter dados de treinamento
        GerenciadorDoBancoDeDados gerenciadorBD = new GerenciadorDoBancoDeDados(new GerenciadorDeConexao());

        List<Map.Entry<String, String>> dadosTreinamento = gerenciadorBD.obterDadosTreinamento();
        System.out.println("Número total de amostras de treinamento: " + dadosTreinamento.size());

        // Criar lista de DocumentSample a partir dos dados do banco de dados
        List<DocumentSample> samples = criarDocumentSamples(dadosTreinamento);

        ObjectStream<DocumentSample> sampleStream = ObjectStreamUtils.createObjectStream(samples);

        TrainingParameters params = new TrainingParameters();
        params.put(TrainingParameters.ITERATIONS_PARAM, 1000);
        params.put(TrainingParameters.CUTOFF_PARAM, 1);

        DoccatModel modelo = DocumentCategorizerME.train("pt", sampleStream, params, new DoccatFactory());

        salvarModeloTreinado(modelo, "modelo_treinado.bin");
    }

    private static List<DocumentSample> criarDocumentSamples(List<Map.Entry<String, String>> dadosTreinamento) {
        List<DocumentSample> samples = new ArrayList<>();
        for (Map.Entry<String, String> entry : dadosTreinamento) {
            String intencao = entry.getKey();
            String dado = entry.getValue();
            String[] tokens = SimpleTokenizer.INSTANCE.tokenize(dado); // Utiliza o tokenizer do OpenNLP
            samples.add(new DocumentSample(intencao, tokens));
            System.out.println("Amostra de Treinamento: Intenção - " + intencao + ", Tokens - " + Arrays.toString(tokens));
        }
        return samples;
    }

    private static void salvarModeloTreinado(DoccatModel modelo, String nomeArquivo) throws IOException {
        try (OutputStream modeloOut = new BufferedOutputStream(new FileOutputStream(nomeArquivo))) {
            modelo.serialize(modeloOut);
        }
    }
}
