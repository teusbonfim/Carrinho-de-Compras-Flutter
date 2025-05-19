#Carrinho de Compras Flutter
Um app Flutter simples que exibe uma lista de produtos em um grid e permite adicionar itens ao carrinho, mostrando o total acumulado.

---

##Funcionalidades
- Lista de produtos com nome, preço e imagem.
- Layout em grade (grid) responsivo.
- Botão para adicionar produtos ao carrinho.
- Exibição do total atualizado no rodapé da tela.

##Tecnologias usadas
- Flutter
- Dart

##Como rodar
##Pré-requisitos
- Flutter instalado (instruções aqui)
- Editor de código (VSCode, Android Studio, etc.)

##Passos
### 1. Clone o repositório (ou copie o código para um novo projeto Flutter):
git clone <url-do-repositorio>
cd nome-do-projeto

### 2. Ative o suporte para web (se quiser rodar no navegador):
flutter config --enable-web

### 3. Rode o app no dispositivo desejado (emulador, dispositivo físico ou navegador):
flutter run

### 4. Para gerar a versão web estática (HTML, JS, CSS) para hospedar:
flutter build web
Os arquivos ficam em build/web/.

##Estrutura do código
- Produto: classe que representa um produto com nome, preço e URL da imagem.
- CarrinhoApp: widget principal que configura o MaterialApp.
- CarrinhoHomePage: tela principal com grid de produtos e total.
- CarrinhoHomePageState: estado da tela, mantém a lista de produtos e total do carrinho.

##Imagens dos produtos
As imagens são carregadas via URL, então é necessário internet para exibição correta.

##Autor
Mateus Bonfim Lidio / @teusbonfim_
