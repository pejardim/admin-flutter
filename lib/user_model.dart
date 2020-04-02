class UserModel {
  UserModel({this.contato, this.email, this.nome});

  String nome;
  String contato;
  String email;

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      nome: json['nome'],
      contato: json['contato'],
      email: json['email'],
    );
  }

  Map<String, dynamic> toJson() => {
        'nome': nome,
        'contato': contato,
        'email': email,
      };
}
