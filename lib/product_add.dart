

import 'package:flutter/material.dart';
import 'package:sqflite_practice/dbHelper.dart';
import 'package:sqflite_practice/product.dart';


class ProductAdd extends StatefulWidget {
  const ProductAdd({Key? key}) : super(key: key);

  @override
  State<ProductAdd> createState() => _ProductAddState();
}

class _ProductAddState extends State<ProductAdd> {
  var txtName = TextEditingController();
  var dbhelper = DbHelper();
  @override
  Widget build(BuildContext context) {
return Scaffold(
  appBar: AppBar(
    title: Text('Product Add Screem'),
    centerTitle: true,
  ),
  body: Padding(padding: EdgeInsets.all(30.0),
  child: Column(
    children: <Widget>[
      TextField(decoration:  InputDecoration(
        labelText: "Name",
      ),
      controller: txtName,
      ),

      saveButton(),


    ],
  ), 
  
  ),
);

    
  }


  Widget saveButton() {
    return ElevatedButton(onPressed: ()async{
      String name = txtName.text;
      Product p = Product(name);
      var result = await dbhelper.insert(p);
      Navigator.pop(context, true);
    },
    
    
    child: Text('Save Name')
    );

  }

}