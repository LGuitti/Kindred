class InteracaoChatbot {
    constructor() {
        this.avaliacaoRealizada = false;

        document.getElementById("submitBtn").addEventListener("click", () => this.enviarMensagem());
        document.getElementById("message").addEventListener("keypress", (e) => {
            if (e.key === 'Enter') {
                this.enviarMensagem();
            }
        });
        document.getElementById("avaliacaoBtn").addEventListener("click", () => this.enviarAvaliacao());
    }

    enviarMensagem() {
        var message = document.getElementById("message").value;
        if (!message.trim()) return;

        var chatOutput = document.getElementById("chatOutput");
        chatOutput.innerHTML += '<p class="userMessage"><strong>Você:</strong> ' + message + '</p>';
        document.getElementById("message").value = '';

        fetch('/interagir?mensagemUsuario=' + encodeURIComponent(message), {
            method: 'POST'
        })
        .then(response => response.json())
        .then(data => {
            const mensagemBot = '<p class="botMessage"><strong>Kindred:</strong> ' + data.resposta + '</p>';
            chatOutput.insertAdjacentHTML('beforeend', mensagemBot);

            if (data.mostrarAvaliacao === "true" && !this.avaliacaoRealizada) {
                document.getElementById("avaliacaoSection").style.display = "block";
                chatOutput.insertAdjacentElement('beforeend', document.getElementById("avaliacaoSection"));
            } else {
                document.getElementById("avaliacaoSection").style.display = "none";
            }
        })
        .catch(error => console.error('Erro:', error));
    }

    enviarAvaliacao() {
        var avaliacao = document.getElementById("avaliacao").value;
        fetch('/avaliar?avaliacao=' + encodeURIComponent(avaliacao), {
            method: 'POST'
        })
        .then(() => {
            console.log('Avaliação enviada com sucesso');
            document.getElementById("avaliacaoSection").style.display = "none";
            this.avaliacaoRealizada = true;
        })
        .catch(error => console.error('Erro:', error));
    }
}

// Instanciar a classe quando a página for carregada
document.addEventListener('DOMContentLoaded', () => {
    new InteracaoChatbot();
});
