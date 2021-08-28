import 'package:http/http.dart'as http;
import 'dart:convert';
import 'baby products_model.dart';
Future<BabyProductsModel>babyProducts() async {
  http.Response response=await http.get(Uri.parse("https://retail.amit-learning.com/api/categories/3"));
  if(response.statusCode ==200){
    return BabyProductsModel.babyProducts(json.decode(response.body));
  }else{
    throw Exception("cant print data ");
  }
}