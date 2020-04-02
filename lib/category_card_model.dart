class CategoryCardModel {
  CategoryCardModel({this.categoria, this.id});

  String categoria;
  String id;

  factory CategoryCardModel.fromJson(Map<String, dynamic> json) {
    return CategoryCardModel(
      categoria: json['categoria'],
      id: json['id'],
      //field: json[''],
    );
  }

  Map<String, dynamic> toJson() => {};
}
