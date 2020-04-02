import 'package:flutter/material.dart';

class AdminPage extends StatelessWidget {
  const AdminPage({Key key}) : super(key: key);

  /*
    Bruno, como os dados vão ser obtidos por meio do firebase, apenas criei alguns exemplos locais para facilitar
    na hora de converte-los para datatype do firebase, caso surga alguma outra necessidade disso me comunique

  */

  @override
  Widget build(BuildContext context) {
    var produto1 = "Pão";
    var produto2 = "Teste 2";
    var produto3 = "cerveja";
    var produto4 = "Marcelo";
    var produto5 = "cerveja";
    int valor1 = 10;
    int valor2 = 50;
    int valor3 = 24;
    int valor4 = 34;
    int valor5 = 46;
    var cat1 = "Sucos";
    var cat2 = "Pessoas";
    var cat3 = "Cervejas";
    var cat4 = "Comidas";
    var cat5 = "Sobremesas";
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Módulo administrador"),
          actions: <Widget>[
            IconButton(
              tooltip: 'Adicionar novos produtos',
              icon: Icon(Icons.add),
              onPressed: () {
                Navigator.of(context).push(adicionarproduto(context));
              },
            ),
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButton: FloatingActionButton(
            tooltip: 'Upload das mudanças para o servidor',
            child: const Icon(Icons.cloud_upload),
            onPressed: () {
              //TODO: Adiciona aqui a função de recarregar no firebase
              mandarFirebase(context);
            }),
        body: Container(
          margin: EdgeInsets.only(top: 10.0),
          alignment: Alignment.center,
          child: ListView(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      SizedBox(
                        height: 50,
                        width: 70,
                        child: Text(
                          "Produto",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                        width: 70,
                        child: Text(produto1),
                      ),
                      SizedBox(
                        height: 50,
                        width: 70,
                        child: Text(produto2),
                      ),
                      SizedBox(
                        height: 50,
                        width: 70,
                        child: Text(produto3),
                      ),
                      SizedBox(
                        height: 50,
                        width: 70,
                        child: Text(produto4),
                      ),
                      SizedBox(
                        height: 50,
                        width: 70,
                        child: Text(produto5),
                      ),
                    ],
                  ), //Coluna dos produtos
                  Column(
                    children: <Widget>[
                      SizedBox(
                        height: 50,
                        width: 70,
                        child: Text(
                          "Preço",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                        width: 70,
                        child: Text("R\$$valor1"),
                      ),
                      SizedBox(
                        height: 50,
                        width: 70,
                        child: Text("R\$$valor2"),
                      ),
                      SizedBox(
                        height: 50,
                        width: 70,
                        child: Text("R\$$valor3"),
                      ),
                      SizedBox(
                        height: 50,
                        width: 70,
                        child: Text("R\$$valor4"),
                      ),
                      SizedBox(
                        height: 50,
                        width: 70,
                        child: Text("R\$$valor5"),
                      ),
                    ],
                  ), //Coluna dos preços
                  Column(
                    children: <Widget>[
                      SizedBox(
                        height: 50,
                        width: 80,
                        child: Text("Categoria",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ),
                      SizedBox(
                        height: 50,
                        width: 80,
                        child: Text(cat1),
                      ),
                      SizedBox(
                        height: 50,
                        width: 80,
                        child: Text(cat2),
                      ),
                      SizedBox(
                        height: 50,
                        width: 80,
                        child: Text(cat3),
                      ),
                      SizedBox(
                        height: 50,
                        width: 80,
                        child: Text(cat4),
                      ),
                      SizedBox(
                        height: 50,
                        width: 80,
                        child: Text(cat5),
                      ),
                    ],
                  ), //Coluna das categorias
                  Column(
                    children: <Widget>[
                      SizedBox(
                        height: 20,
                        width: 70,
                      ),
                      SizedBox(
                        height: 50,
                        width: 70,
                        child: IconButton(
                          icon: Icon(Icons.edit),
                          onPressed: () {
                            print("tentando fazer mudar o numero");
                            Navigator.of(context).push(
                                _mudancaValor(context, valor1, produto1, cat1));
                          },
                        ),
                      ),
                      SizedBox(
                        height: 50,
                        width: 70,
                        child: IconButton(
                          icon: Icon(Icons.edit),
                          onPressed: () {
                            print("tentando fazer mudar o numero");
                            Navigator.of(context).push(
                                _mudancaValor(context, valor2, produto2, cat2));
                          },
                        ),
                      ),
                      SizedBox(
                        height: 50,
                        width: 70,
                        child: IconButton(
                          icon: Icon(Icons.edit),
                          onPressed: () {
                            print("tentando fazer mudar o numero");
                            Navigator.of(context).push(
                                _mudancaValor(context, valor3, produto3, cat3));
                          },
                        ),
                      ),
                      SizedBox(
                        height: 50,
                        width: 70,
                        child: IconButton(
                          icon: Icon(Icons.edit),
                          onPressed: () {
                            print("tentando fazer mudar o numero");
                            Navigator.of(context).push(
                                _mudancaValor(context, valor4, produto4, cat4));
                          },
                        ),
                      ),
                      SizedBox(
                        height: 50,
                        width: 70,
                        child: IconButton(
                          icon: Icon(Icons.edit),
                          onPressed: () {
                            print("tentando fazer mudar o numero");
                            Navigator.of(context).push(
                                _mudancaValor(context, valor5, produto5, cat5));
                          },
                        ),
                      ),
                    ],
                  ), //Coluna dos botões de alteração
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

_mudancaValor(BuildContext context, int valor, var nome, var categoria) {
  return showDialog(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Alteração de preço'),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text('Nome do produto: ' + nome),
              Text('Valor Atual: ' + "R\$$valor"),
              Text("Categoria: " + categoria),
              TextField(
                keyboardType: TextInputType.text,
                autofocus: true,
                decoration: new InputDecoration(
                  labelText: 'Novo nome',
                ),
                onChanged: (valueNome) {
                  //TODO: checar função de alteração
                  nome = valueNome;
                },
              ),
              TextField(
                keyboardType: TextInputType.number,
                autofocus: true,
                decoration: new InputDecoration(
                  labelText: 'Novo valor',
                ),
                onChanged: (value) {
                  //TODO: checar função de alteração
                  valor = value as int;
                },
              ),
              TextField(
                keyboardType: TextInputType.text,
                autofocus: true,
                decoration: new InputDecoration(
                  labelText: 'Nova categoria',
                ),
                onChanged: (valueCat) {
                  //TODO: checar função de alteração
                  categoria = valueCat;
                },
              ),
            ],
          ),
        ),
        actions: <Widget>[
          FlatButton(
            color: Colors.red,
            child: Text("Excluir"),
            onPressed: () {
              //TODO: colocar função de excluir produto
              Navigator.of(context).pop();
            },
          ),
          FlatButton(
            child: Text("Fechar"),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          FlatButton(
            child: Text('Salvar'),
            onPressed: () {
              //TODO: Adicionar a função que salva o valor no firebase
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}

adicionarproduto(BuildContext context) {
  var nome;
  int valor;
  var categoria;
  //Função para se adicionar novo tupo de produto
  return showDialog(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Adicionar novo produto'),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              TextField(
                keyboardType: TextInputType.text,
                autofocus: true,
                decoration: new InputDecoration(
                    labelText: 'Nome do produto',
                    hintText: 'Digite o nome do produto'),
                onChanged: (valorNome) {
                  nome = valorNome;
                },
              ),
              TextField(
                keyboardType: TextInputType.number,
                autofocus: true,
                decoration: new InputDecoration(
                    labelText: 'Valor',
                    hintText: 'Digite o valor do produto'),
                onChanged: (value) {
                  valor = value as int;
                },
              ),
              TextField(
                keyboardType: TextInputType.text,
                autofocus: true,
                decoration: new InputDecoration(
                    labelText: 'Categoria',
                    hintText: 'Digite a categoria do produto'),
                onChanged: (valueCat) {
                  categoria = valueCat;
                },
              ),
            ], //TODO: Adicionar texto de adicionar produto
          ),
        ),
        actions: <Widget>[
          FlatButton(
            child: Text("Fechar"),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          FlatButton(
            child: Text('Adicionar'),
            onPressed: () {
              //TODO: Adicionar a função que adiciona novo produto
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}

mandarFirebase(BuildContext context) {
  //Função para se adicionar novo tupo de produto
  return showDialog(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Produtos atualizados!'),
        content: Text("Produtos atualizados no servidor"),
        actions: <Widget>[
          FlatButton(
            child: Text("Fechar"),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
