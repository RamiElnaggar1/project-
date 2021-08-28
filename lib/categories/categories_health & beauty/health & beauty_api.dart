import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:project/categories/categories_health%20&%20beauty/health%20&%20beauty_model.dart';

Future<HealthBeauty> healthbeauty() async {
  http.Response response = await http
      .get(Uri.parse("https://retail.amit-learning.com/api/categories/4"));
  if (response.statusCode == 200) {
    return HealthBeauty.healthBeauty(json.decode(response.body));
  } else {
    throw Exception("cant print data ");
  }
}
