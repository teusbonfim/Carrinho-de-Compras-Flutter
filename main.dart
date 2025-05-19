import 'package:flutter/material.dart';

void main() {
  runApp(CarrinhoApp());
}

class Produto {
  final String nome;
  final double preco;
  final String imagemUrl;

  Produto(this.nome, this.preco, this.imagemUrl);
}

class CarrinhoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Carrinho de Compras',
      theme: ThemeData(primarySwatch: Colors.teal),
      home: CarrinhoHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class CarrinhoHomePage extends StatefulWidget {
  @override
  _CarrinhoHomePageState createState() => _CarrinhoHomePageState();
}

class _CarrinhoHomePageState extends State<CarrinhoHomePage> {
 final List<Produto> produtos = [
  Produto("Camisa", 49.90, 'https://down-br.img.susercontent.com/file/br-11134207-7r98o-lo9tkkeduwlgb7'),
  Produto("Tênis", 89.90, 'https://imgnike-a.akamaihd.net/768x768/02501151.jpg'),
  Produto("Calça", 79.90, 'https://cdn.shopify.com/s/files/1/0280/0327/9776/products/Calca-Jeans-Masculina_azul_1.jpg'),
  Produto("Boné", 29.90, 'https://images.tcdn.com.br/img/img_prod/1041282/bone_new_era_950_nfl_oakland_raiders_preto_622_1_7a88f4131a6f336d97c52e660781e348.jpg'),
  Produto("Mochila", 99.90, 'https://static.netshoes.com.br/produtos/mochila-adidas-linear-core/26/D12-2787-026/D12-2787-026_zoom1.jpg'),
  Produto("Relógio", 199.90, 'https://images.tcdn.com.br/img/img_prod/758035/relogio_masculino_curren_8329_couro_original_com_caixa_7385_1_b30e9bc73e0a4101f496defd8e2d9587.jpg'),
];

  double total = 0.0;

  void adicionarAoCarrinho(double preco) {
    setState(() {
      total += preco;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('🛒 Carrinho de Compras'),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: GridView.builder(
            itemCount: produtos.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 12,
              crossAxisSpacing: 12,
              childAspectRatio: 0.75,
            ),
            itemBuilder: (context, index) {
              final produto = produtos[index];
              return Container(
                decoration: BoxDecoration(
                  color: Colors.teal.shade50,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade300,
                      blurRadius: 4,
                      offset: Offset(2, 2),
                    )
                  ],
                ),
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Expanded(
                      child: Image.network(produto.imagemUrl, fit: BoxFit.cover),
                    ),
                    SizedBox(height: 8),
                    Text(produto.nome,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16)),
                    Text("R\$ ${produto.preco.toStringAsFixed(2)}"),
                    SizedBox(height: 8),
                    ElevatedButton(
                      onPressed: () => adicionarAoCarrinho(produto.preco),
                      child: Text("Adicionar"),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
        bottomNavigationBar: Container(
          color: Colors.teal,
          padding: EdgeInsets.all(16),
          child: Text(  
            "Total: R\$ ${total.toStringAsFixed(2)}",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
