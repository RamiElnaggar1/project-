import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:project/categories/categoris_supermarket/supermarket_model.dart';

Future<SupermarketModel> supermarket() async {
  http.Response response = await http
      .get(Uri.parse("https://retail.amit-learning.com/api/categories/6"));
  if (response.statusCode == 200) {
    return SupermarketModel.supermarket(json.decode(response.body));
  } else {
    throw Exception("cant print data ");
  }
}
