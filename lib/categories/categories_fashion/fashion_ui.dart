import 'package:flutter/material.dart';
import 'package:project/categories/categories_fashion/dashion_api.dart';
import 'package:project/categories/categories_fashion/screens/fashion_screen.dart';
import 'package:project/categories/categories_fashion/screens/fashion_screen1.dart';
import 'package:project/categories/categories_fashion/screens/fashion_screen2.dart';
import 'package:project/categories/categories_fashion/screens/fashion_screen3.dart';

import 'fashion_model.dart';

class Fashion extends StatefulWidget {

  @override
  _FashionState createState() => _FashionState();
}

class _FashionState extends State<Fashion> {
  Future<FashionModel> data;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    data = fashion();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffD1D0D0),
        body:
        SingleChildScrollView(
          child: Center(
            child: FutureBuilder<FashionModel>(
                future: data,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
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
                                                  "https://retail.amit-learning.com/images/products/mFXrS9i3y07IT9ic7jgcfq90GtMhf91WdlydLsnt.jpg"))),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "Man White  T-Shirt",
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
                                              Navigator.push(context, MaterialPageRoute(builder: (context)=>FashionScreen1()));
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
                                          "EGP  200",
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
                                                  "https://retail.amit-learning.com/images/products/ZvQcRNN9570Lw927SOmOI02xgasfysuT616SBdlp.jpg"))),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "A-line Shirt Dress",
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
                                              Navigator.push(context, MaterialPageRoute(builder: (context)=>FashionScreen2()));
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
                                          "EGP  290",
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
                                                  "https://retail.amit-learning.com/images/products/QZMwBjevtyPcIicsSCoQyercnimEzQrmOVSbaFCq.jpg"))),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "Activ Round Toe",
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
                                              Navigator.push(context, MaterialPageRoute(builder: (context)=>FashionScreen3()));
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
                                          "EGP  200",
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
                                                  "https://retail.amit-learning.com/images/products/5dw5Lk0m8hloh8wBdsqL20JD602qKmXEVo4KyR9v.jpg"))),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "Three Men Socks Ankle",
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
                                              Navigator.push(context, MaterialPageRoute(builder: (context)=>FashionScreen4()));
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
                            ],
                          ),

                        ],
                      );
                  } else if (snapshot.hasError) {
                    print("No data found ${snapshot.hasError}");
                  }
                  return CircularProgressIndicator();
                }
            ),
          ),
        )
    );
  }
}
