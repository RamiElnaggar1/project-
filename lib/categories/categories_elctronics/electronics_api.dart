import 'package:http/http.dart'as http;
import 'dart:convert';

import 'electronics_model.dart';
Future<ElectronicsModel>electronic() async {
  http.Response response=await http.get(Uri.parse("https://retail.amit-learning.com/api/categories/2"));
  if(response.statusCode ==200){
    return ElectronicsModel.electronics(json.decode(response.body));
  }else{
    throw Exception("cant print data ");
  }
}