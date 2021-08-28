import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:project/categories/categoris_phone/phone_model.dart';

Future<PhoneModel> phone() async {
  http.Response response = await http
      .get(Uri.parse("https://retail.amit-learning.com/api/categories/5"));
  if (response.statusCode == 200) {
    return PhoneModel.phone(json.decode(response.body));
  } else {
    throw Exception("cant print data ");
  }
}
