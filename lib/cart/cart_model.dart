import 'package:flutter/cupertino.dart';

class ModelCart{
  int _number;
  String _name;

  String get name => _name;
  int get number => _number;

  ModelCart( this._number, this._name);
ModelCart.fromJson(dynamic json){
  _name=json["name"];
  _number=json["number"];
}
Map<String , dynamic>toJson(){
  return {
    "number":_number,"name":_name
  };
}


}