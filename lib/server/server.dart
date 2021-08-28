import 'package:dio/dio.dart';

class Server {
  var dio = Dio();
  Response _response;

  Future<bool> login(String password, String email) async {
    try {
      _response = await dio.post("https://retail.amit-learning.com/api/login",
          data: {'email': email, 'password': password});
      print("response:${_response.data}");

      return true;
    } catch (e) {
      print("Print Error:  $e");
    }
    return false;
  }

  Future<bool> signUp({String password, String email, String name}) async {
    try {
      _response = await dio.post(
          "https://retail.amit-learning.com/api/register",
          data: {'email': email, 'password': password, 'name': name});
      print("response:${_response.data}");

      return true;
    } catch (e) {
      print("Print Error:  $e");
    }
    return false;
  }
}
