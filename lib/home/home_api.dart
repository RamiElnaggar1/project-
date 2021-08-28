import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:project/home/home_model.dart';

Future<HomeModel> product() async {
  http.Response response = await http
      .get(Uri.parse("https://retail.amit-learning.com/api/products"));
  if (response.statusCode == 200) {
    return HomeModel.productsApi(jsonDecode(response.body));
  } else {
    throw Exception("cant print data");
  }
}
