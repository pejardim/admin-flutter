class MenuItemModel {
  MenuItemModel({
    this.preco,
    this.nome,
    this.descricao,
    this.categoria,
    this.imagem,
    this.id,
  });
  double preco;
  String nome;
  String descricao;
  String categoria;
  String imagem;
  String id;

  factory MenuItemModel.fromJson(Map<String, dynamic> json) {
    return MenuItemModel(
      categoria: json['categoria'],
      descricao: json['descricao'],
      imagem: json['imagem'],
      nome: json['nome'],
      id: json['id'],
      preco: json['preco'],
    );
  }

  Map<String, dynamic> toJson() => {
        'categoria': categoria,
        'descricao': descricao,
        'imagem': imagem,
        'nome': nome,
        'id': id,
        'preco': preco,
      };
}
