class CategoriesModel {

  int id;
  String name;
  String avatar;

  CategoriesModel({this.id, this.name, this.avatar});

  factory CategoriesModel.categoriesApi(Map<String, dynamic> json) {
    return CategoriesModel(

        id: json['id'],
        name: json['name'],
        avatar: json['avatar']);
  }

}