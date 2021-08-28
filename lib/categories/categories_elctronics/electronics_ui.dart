import 'package:flutter/material.dart';
import 'package:project/categories/categories_elctronics/electronic_screens/elctronic_Screen1.dart';
import 'package:project/categories/categories_elctronics/electronic_screens/elctronic_scareen2.dart';
import 'package:project/categories/categories_elctronics/electronics_api.dart';
import 'package:project/categories/categories_elctronics/electronics_model.dart';

class Electronics extends StatefulWidget {

  @override
  _ElectronicsState createState() => _ElectronicsState();
}

class _ElectronicsState extends State<Electronics> {
 Future<ElectronicsModel> data;
 @override
  void initState() {
    // TODO: implement initState
    super.initState();
 data =electronic();
 }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Center(
          child: FutureBuilder<ElectronicsModel>(
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
                                          Navigator.push(context, MaterialPageRoute(builder: (context)=>ElectronicScreen1()));
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
Navigator.push(context, MaterialPageRoute(builder: (context)=> ElectronicScreen2()
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
                                          Navigator.push(context, MaterialPageRoute(builder: (context)=> ElectronicScreen2()
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
                                      "EGP  5720",
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
                                          Navigator.push(context, MaterialPageRoute(builder: (context)=> ElectronicScreen1())
                                          );
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
