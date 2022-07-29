import 'dart:math';

class Product{
  int id = 0;
  String name = "";

  Product( this.name);
  Product.withid(this.id, this.name);

  Map<String, dynamic> toKeyValue(){
    var map = Map<String, dynamic>();
    map["name"] = name;
    if (id != null){
      map["id"] = Random().nextInt(100);
    }
    return map;
  }

  Product.fromKeyValue(dynamic v){
    this.id = int.parse(v["id"].toString());
    this.name = v["name"];
  }

}