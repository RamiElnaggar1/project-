class SupermarketModel{


  int id;
  String name;
  String title;
  int category_id;
  dynamic description;
  int price;
  int discount;
  dynamic discount_type;
  String currency;
  int in_stock;
  String avatar;
  int price_final;
  String price_final_text;
  SupermarketModel(
      {this.id,
        this.name,
        this.title,
        this.category_id,
        this.description,
        this.price,
        this.discount,
        this.discount_type,
        this.currency,
        this.in_stock,
        this.avatar,
        this.price_final,
        this.price_final_text});
  factory SupermarketModel. supermarket(Map<String, dynamic> json) {
    return SupermarketModel(
        id: json["id"],
        name: json["name"],
        title: json["title"],
        category_id: json["category_id"],
        description: json["description"],
        price: json["price"],
        discount: json["discount"],
        discount_type: json["discount_type"],
        currency: json["currency"],
        in_stock: json["in_stock"],
        avatar: json["avatar"],
        price_final: json["price_final"],
        price_final_text: json["price_final_text"]);
  }
}
