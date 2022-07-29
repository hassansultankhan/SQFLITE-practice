

import 'package:flutter/material.dart';
import 'dbHelper.dart';
import 'product_add.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({Key? key}) : super(key: key);

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  int productCount = 0;
  var dbHelper = DbHelper();
  List Products = [];
  @override
  void initState() {
    // TODO: implement initState
    getproducts();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SQFLITE PRACTICE'),
        centerTitle: true,

      ),

      body: ListView.builder(
        itemCount: productCount,
        itemBuilder: (BuildContext context, int position) {
          return Card(
            child: ListTile(
              title: Text(this.Products[position].name),
              subtitle: Text(int.parse(this.Products[position].id).toString()),  
                
              ),
            );
          
          
        }
        ),
        
        
        
        
        floatingActionButton: FloatingActionButton(onPressed: (){productAddpage();})
    
        );
    
  }
  void productAddpage()async{
   bool result = await Navigator.push(context, MaterialPageRoute(builder: (context) => ProductAdd()));   
   if (result != null){
    if (result){
      getproducts();
    }
   }
  }

  void getproducts()async{
    var productsFuture = dbHelper.getProducts();
    productsFuture.then((data) {
      setState(() {
        this.Products = data;
        productCount = data.length;
      });
    });
  }

}