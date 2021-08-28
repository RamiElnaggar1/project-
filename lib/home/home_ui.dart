import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project/home/home_model.dart';
import 'package:project/home/screens/Screen1.dart';
import 'package:project/home/screens/screen2.dart';
import 'package:project/home/screens/screen3.dart';
import 'package:project/home/screens/screen4.dart';
import 'package:project/home/screens/screen5.dart';
import 'package:project/home/screens/screen6.dart';
import 'package:project/home/screens/screen7.dart';
import 'package:project/home/screens/screen8.dart';

import 'home_api.dart';

class Product extends StatefulWidget {
  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
  Future<HomeModel> data;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    data = product();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffB3B3B4),
      body: SingleChildScrollView(
        child: Center(
          child: FutureBuilder<HomeModel>(
              future: data,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Column(
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
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      Screen1()));
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
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      Screen2()));
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
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      Screen4()));
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
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      Screen3()));
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
                                              "https://retail.amit-learning.com/images/products/G7LX8TpZzABsoYRCwVTOL4pF9o3Kf32BsGrQ1U9n.jpg"))),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "LG TV - 32-inch",
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
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      Screen5()));
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
                                      "EGP  4000",
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
                                              "https://retail.amit-learning.com/images/products/qaFVExb7Anh4liJKPLbElah2SasrC8TWUA3iaAGh.jpg"))),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Smart Display - 55-inch",
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
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      Screen6()));
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
                                      "EGP  5720",
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
                                              "https://retail.amit-learning.com/images/products/NnXVKMewKJMs0tXYsaUFDy31bnpsM8Tjs18Jbzgq.jpg"))),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Anti Hot Feeding Bottle 250ml",
                                    style: TextStyle(
                                        fontSize: 8, color: Colors.black),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    ElevatedButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    Screen7()));
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
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      Screen8()));
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
                                      "EGP   20.8",
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
                  print("No data found${snapshot.hasError}");
                }
                return Padding(
                  padding: const EdgeInsets.all(160),
                  child: CircularProgressIndicator(
                    valueColor:
                        AlwaysStoppedAnimation<Color>(Color(0xff2C4452)),
                  ),
                );
              }),
        ),
      ),
    );
  }
}
