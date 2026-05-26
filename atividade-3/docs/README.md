# Respostas das Questões Teóricas - Atividade 3

Este documento contém as respostas para as questões propostas sobre Servlets, JSPs e a arquitetura de aplicações Java Web.

---

### Questão 3: 
Model: É onde fica a inteligência do sistema e as regras de negócio.
Ela não sabe nada sobre telas ou botões; ela apenas guarda os dados e faz as contas matemáticas.

View: É a interface que o usuário vê na tela. São as páginas JSP (`simulation.jsp` e `results.jsp`). O papel delas é apenas exibir os dados usando HTML e CSS. 

Controller: Quando o usuário clica no botão, o Controller recebe os dados da tela, passa para o Model calcular, pega o resultado e decide qual View (página JSP) deve ser mostrada para o usuário.

## Como eles interagem:
O usuário mexe na View (ex: preencheeendo o formulário) e envia. O Controller recebe esse pedido, cria e aciona o Model para fazer os cálculos. Depois que o Model termina, o Controller pega os resultados e joga de volta para a View redesenhar a tela com os valores certos para o usuário.

---

## Questão 24: 

Percurso da requisição:
1. O usuário clica no botão "Calcular" no navegador. Isso gera uma Requisição HTTP contendo os dados digitados.
2. Essa requisição viaja pela internet e bate no nosso servidor (Tomcat).
3. O Tomcat descobre qual Servlet é responsável por aquela rota e entrega a requisição para ele.
4. O Servlet processa os dados, prepara a resposta e a envia de volta como uma Resposta HTTP.
5. O navegador lê essa resposta (HTML) e monta a página na tela do usuário.

Ciclo de Vida do Servlet:
Um Servlet passa por três momentos principais gerenciados pelo servidor:
init(): É o nascimento do Servlet. O servidor roda esse método apenas uma vez, quando o sistema liga ou quando o Servlet é chamado pela primeira vez, para prepará-lo na memória.

service(): É a fase da vida adulta. Toda vez que uma requisição chega, esse método é chamado automaticamente. Ele analisa se o pedido é um GET ou POST e repassa para os métodos específicos (`doGet()` ou `doPost()`).

destroy(): É a morte do Servlet. Roda apenas uma vez quando o servidor está sendo desligado, serve para limpar a memória e fechar recursos abertos.

Como ele lida com GET e POST:
GET (doGet): É usado para pedirou buscar coisas do servidor. Quando a URL  é digiada ou entra na página pela primeira vez, o `doGet` envia o HTML limpo. Os dados enviados por GET aparecem na barra de endereço do navegador.

POST (doPost): É usado para enviar dados que vão processar ou salvar algo (ex: formulário de simulação). Os dados vão escondidos dentro do corpo da requisição, tornando o envio mais seguro e limpo.

Configurando Cabeçalhos (Content-Type):
Os cabeçalhos HTTP servem para dizer ao navegador o que ele está recebendo. Usamos o comando `response.setContentType("text/html; charset=UTF-8");

---

### Questão 35: Conteúdo Estático vs. Dinâmico e Pastas do Projeto

a) Utilização de arquivos estáticos e dinâmicos:
Arquivos Estáticos (HTML, CSS, JavaScript): São arquivos fixos. O servidor não precisa processar nada neles; ele simplesmente pega o arquivo do jeito que está no disco e entrega para o navegador. O CSS estiliza a página e o JavaScript dá pequenos efeitos visuais na tela.

Arquivos Dinâmicos (JSPs): São arquivos que misturam HTML com código Java. O servidor precisa "ler e processar" o código Java primeiro antes de mandar para o usuário. O JSP muda de comportamento dependendo do cálculo (se o financiamento der 10.000, ele mostra 10.000; se der 50.000, ele mostra 50.000). No final do processamento, o Java some e o usuário recebe apenas HTML puro.

b) Pasta de arquivos estáticos:
 Eles ficam guardados diretamente dentro da pasta `src/main/webapp`(ou subpastas criadas lá dentro, como `webapp/css` ou `webapp/js`).
Por padrão eles são acessíveis publicamente. Qualquer pessoa que digitar o caminho direto no navegador (ex: `http://localhost:8080/atividade_3/meuestilo.css`) conseguirá visualizar o arquivo.

c) Pasta de arquivos dinâmicos (JSPs):
 Eles podem ficar soltos em `src/main/webapp` para acesso direto, ou escondidos dentro da pasta **`WEB-INF`** (ex: `src/main/webapp/WEB-INF/jsp/`).

Se o JSP estiver solto dentro da pasta `webapp`, ele é acessível publicamente digitando a URL direta. Porém, se ele for guardado dentro da pasta `WEB-INF`, ele NÃO é acessível publicamente. A pasta `WEB-INF` é protegida pelo servidor; o usuário não consegue acessá-la diretamente pelo navegador, obrigando a requisição a passar obrigatoriamente por um Servlet primeiro para segurança do sistema.

### Declaração de Uso de IA:### 
Usada apenas para tirar dúvidas.
