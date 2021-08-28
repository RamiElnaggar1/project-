import 'package:flutter/material.dart';
import 'package:project/categories/categories_baby%20products/baby%20products_api.dart';
import 'package:project/categories/categories_baby%20products/baby%20products_model.dart';
import 'package:project/categories/categories_baby%20products/babyproducts_%20screens/babyproducts_screen1.dart';
import 'package:project/categories/categories_baby%20products/babyproducts_%20screens/babyproducts_screen2.dart';

class BabyProducts extends StatefulWidget {

  @override
  _BabyProductsState createState() => _BabyProductsState();
}

class _BabyProductsState extends State<BabyProducts> {
  Future<BabyProductsModel> data;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    data =babyProducts();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Center(
          child: FutureBuilder<BabyProductsModel>(
              future:data ,
              builder: (context,snapshot){
                if(snapshot.hasData){
                  return
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              // color: Color(0xffA4A4A4  ),
                              width: 140,
                              height: 210,
                              margin: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                borderRadius:
                                BorderRadius.all(Radius.circular(20)),
                                color: Color(0xffA4A4A4),
                                boxShadow: [
                                  BoxShadow(
                                      color: Color(0xff767676),
                                      blurRadius: 20,
                                      offset: Offset(0.0, 10.0)),
                                ],
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    height: 125,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: NetworkImage(
                                                "https://retail.amit-learning.com/images/products/NnXVKMewKJMs0tXYsaUFDy31bnpsM8Tjs18Jbzgq.jpg"))),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "Anti Hot Feeding Bottle",
                                      style: TextStyle(
                                          fontSize: 10, color: Colors.black),
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                    children: [
                                      ElevatedButton(
                                        onPressed: () {
                                          setState(() {
                                            Navigator.push(context, MaterialPageRoute(builder: (context)=>BabyProductsScreen1()));
                                          });
                                        },
                                        child: Icon(Icons.add),
                                        style: ElevatedButton.styleFrom(
                                          primary: Color(0xff2C4452),
                                          elevation: 5,
                                          shadowColor: Colors.black,
                                          minimumSize: Size(1.5, 1),
                                        ),
                                      ),
                                      Text(
                                        "EGP  80",
                                        style:
                                        TextStyle(color: Color(0xff2C4452)),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              // color: Color(0xffA4A4A4  ),
                              width: 140,
                              height: 210,
                              margin: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                borderRadius:
                                BorderRadius.all(Radius.circular(20)),
                                color: Color(0xffA4A4A4),
                                boxShadow: [
                                  BoxShadow(
                                      color: Color(0xff767676),
                                      blurRadius: 20,
                                      offset: Offset(0.0, 10.0)),
                                ],
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    height: 125,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: NetworkImage(
                                                "https://retail.amit-learning.com/images/products/x5JCYgATZL5kH7aHFMdnJi95tpAnJXqCA8fl7LUc.jpg"))),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "Cerelac – 125g",
                                      style: TextStyle(
                                          fontSize: 10, color: Colors.black),
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                    children: [
                                      ElevatedButton(
                                        onPressed: () {
                                          setState(() {
                                            Navigator.push(context, MaterialPageRoute(builder: (context)=> BabyProductsScreen2()
                                            ));
                                          });
                                        },
                                        child: Icon(Icons.add),
                                        style: ElevatedButton.styleFrom(
                                          primary: Color(0xff2C4452),
                                          elevation: 5,
                                          shadowColor: Colors.black,
                                          minimumSize: Size(1.5, 1),
                                        ),
                                      ),
                                      Text(
                                        "EGP  26",
                                        style:
                                        TextStyle(color: Color(0xff2C4452)),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),





                      ],
                    );
                }else if(snapshot.hasError){

                  print("no data found${snapshot.hasError}");
                }
                return
                  Center(child: CircularProgressIndicator());
              }
          ),
        ),
      ),
    );
  }
}
