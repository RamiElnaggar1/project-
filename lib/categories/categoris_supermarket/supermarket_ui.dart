import 'package:flutter/material.dart';
import 'package:project/categories/categoris_supermarket/supermarket_api.dart';
import 'package:project/categories/categoris_supermarket/supermarket_model.dart';
import 'package:project/categories/categoris_supermarket/supermarket_screens/supermarket_screen1.dart';
import 'package:project/categories/categoris_supermarket/supermarket_screens/supermarket_screen2.dart';

class Supermarket extends StatefulWidget {

  @override
  _SupermarketState createState() => _SupermarketState();
}

class _SupermarketState extends State<Supermarket> {

  Future<SupermarketModel> data;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  data = supermarket();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Center(
        child: FutureBuilder<SupermarketModel>(
          future: data,
          builder: (context,snpshot){
            if(snpshot.hasData){
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
                                            "https://retail.amit-learning.com/images/products/1TSggeBV5GFZSGJu3NPk61hhMcuvo1FOuKI8Rv9V.jpg"))),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Hedya Vermicelli Pasta",
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
Navigator.push(context, MaterialPageRoute(builder: (context)=>SupermarketScreen1()));
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
                                    "EGP  4",
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
                                            "https://retail.amit-learning.com/images/products/YwehN2Cv2DAROxwE7urA9dxazZmT9ULts1yUjyvS.jpg"))),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Star Pasta - 400gm",
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
                                        Navigator.push(context, MaterialPageRoute(builder: (context)=>SupermarketScreen2()));

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
                                    "EGP  5",
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

            }else if(snpshot.hasError){
              print("${snpshot.hasError}no data found");
            }
          return CircularProgressIndicator();
          }
        ),
      ),
    );
  }
}
