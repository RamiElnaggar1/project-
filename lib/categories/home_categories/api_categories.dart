import 'package:http/http.dart'as http;
import 'package:project/categories/home_categories/model_categories.dart';
import 'dart:convert';
 Future <CategoriesModel> categories()async{
   http.Response response=await
   http.get(Uri.parse('https://retail.amit-learning.com/api/categories'));

 if(response.statusCode ==200){
 return CategoriesModel.categoriesApi(json.decode(response.body));
 }else{
   throw Exception("can`t print data");
 }
 }