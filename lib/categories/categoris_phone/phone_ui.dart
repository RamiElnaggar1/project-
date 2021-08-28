import 'package:flutter/material.dart';
import 'package:project/categories/categoris_phone/phone_api.dart';
import 'package:project/categories/categoris_phone/phone_model.dart';
import 'package:project/categories/categoris_phone/phone_screens/phone_screen1.dart';
import 'package:project/categories/categoris_phone/phone_screens/phone_screen2.dart';

class Phone extends StatefulWidget {
  @override
  _PhoneState createState() => _PhoneState();
}

class _PhoneState extends State<Phone> {
  Future<PhoneModel> data;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    data = phone();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: FutureBuilder<PhoneModel>(
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
                            borderRadius: BorderRadius.all(Radius.circular(20)),
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
                                            "https://retail.amit-learning.com/images/products/zzT6olJMhoeu7vFaTB16Z3uNcBcfWDj2EqP4AAYe.jpg"))),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Samsung Galaxy M11",
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
                                                    PhoneScreen1()));
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
                                    "EGP  2500",
                                    style: TextStyle(color: Color(0xff2C4452)),
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
                            borderRadius: BorderRadius.all(Radius.circular(20)),
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
                                            "https://retail.amit-learning.com/images/products/z5ZoadcxRtYPN9wEQb1YtxrIoCWTMHc3hwDEze07.jpg"))),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "XIAOMI Redmi 8A",
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
                                                    PhoneScreen2()));
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
                                    "EGP  1800",
                                    style: TextStyle(color: Color(0xff2C4452)),
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
                print("${snapshot.hasError}no data found");
              }
              return CircularProgressIndicator();
            }),
      ),
    );
  }
}
