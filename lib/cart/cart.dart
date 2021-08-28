import 'package:flutter/material.dart';
import 'package:project/cart/cart_db_helper.dart';
import 'package:project/cart/cart_model.dart';
import 'package:project/cart/project.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  var nameController = TextEditingController();
  var numberController = TextEditingController();
  DbHelper dbHelper;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    dbHelper = new DbHelper();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffB3B3B4 ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Container(
              width: 190,
               height: 190,
               margin: EdgeInsets.all(20),
               decoration: BoxDecoration(
                 image: DecorationImage(
                  image: ExactAssetImage("assets/images/cart.png"),
fit: BoxFit.cover
                   ),
                 ),
               ),


             Padding(
               padding: const EdgeInsets.all(10.0),
               child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "product name",
                  ),
                  controller: nameController,
                ),
             ),
             SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Quantity",
                  ),
                  controller: numberController,
                ),
              ),
             SizedBox(height: 20,),
              ElevatedButton(
                  onPressed: ()async {
                  await  insertCart();
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Project()));

                },
                  child: Text("Purchase"),
              style:  ElevatedButton.styleFrom(
                  minimumSize: Size(350,50)
              ),)
            ],
          ),
        ),
      ),
    );
  }

  Future<void> insertCart() async {
   ModelCart cart =
       ModelCart(int.parse(numberController.text),nameController.text );
    var json = {
      "name": nameController.text,
      "number": int.parse(numberController.text)
    };
    ModelCart modelCart = ModelCart.fromJson(json);
    int response = await dbHelper.insertCart(modelCart);
    print(response);
  }
}
