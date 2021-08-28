import 'package:flutter/material.dart';
import 'package:project/categories/categories_health%20&%20beauty/health%20&%20beauty_api.dart';
import 'package:project/categories/categories_health%20&%20beauty/health_Screens/health_screen1.dart';
import 'package:project/categories/categories_health%20&%20beauty/health_Screens/health_screen2.dart';
import 'package:project/categories/categories_health%20&%20beauty/health_Screens/health_screen3.dart';

import 'health & beauty_model.dart';

class Health extends StatefulWidget {

  @override
  _HealthState createState() => _HealthState();
}

class _HealthState extends State<Health> {
  Future<HealthBeauty> data;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  data =healthbeauty();
  }@override
  Widget build(BuildContext context) {
    return Scaffold(
body: Center(

  child: FutureBuilder<HealthBeauty>(
    future: data,
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
                                        "https://retail.amit-learning.com/images/products/Yn7kce4Gl1WXxV6iHd7VKrMu4GUcv056x9BJxbc6.jpg"))),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              " Braun Hair Remover",
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
                                 Navigator.push(context, MaterialPageRoute(builder: (context)=>HealthScreen1()));
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
                                "EGP  450",
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
                                        "https://retail.amit-learning.com/images/products/zELiT69pmRSpLaBCmdH5Ygmez4MaCoRU13rMcwM0.jpg"))),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Nivea Cocoa - 200ml",
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
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>HealthScreen2()));
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
                                "EGP  35",
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
                                        "https://retail.amit-learning.com/images/products/Nc69KravsXuhUrg9PlXLEtBg9fBnzr0Atrtyqrtv.jpg"))),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Eva Shampoo 400ml",
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
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>HealthScreen3()));
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
                                "EGP  90",
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
    return CircularProgressIndicator();
    }
  ),
),
    );
  }
}
