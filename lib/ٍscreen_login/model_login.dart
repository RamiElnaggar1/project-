/// email : "<string>"
/// password : "<string>"
class ModelLogin {
  String _email;
  String _password;

  String get email => _email;

  String get password => _password;

  ModelLogin({String email, String password}) {
    _email = email;
    _password = password;
  }

  ModelLogin.fromJson(dynamic json) {
    _email = json['email'];
    _password = json['password'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['email'] = _email;
    map['password'] = _password;
    return map;
  }
}
