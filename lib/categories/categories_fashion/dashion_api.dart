import 'package:http/http.dart'as http;
import 'package:project/categories/categories_fashion/fashion_model.dart';
import 'dart:convert';
Future<FashionModel>fashion() async {
  http.Response response=await http.get(Uri.parse("https://retail.amit-learning.com/api/categories/1"));
if(response.statusCode ==200){
  return FashionModel.fashion(json.decode(response.body));
}else{
  throw Exception("cant print data ");
}
}