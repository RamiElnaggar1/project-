import 'package:flutter/material.dart';
import 'package:project/categories/categories_baby%20products/baby%20products_ui.dart';
import 'package:project/categories/categories_elctronics/electronics_ui.dart';
import 'package:project/categories/categories_fashion/fashion_ui.dart';
import 'package:project/categories/categories_health%20&%20beauty/health%20&%20beauty_model.dart';
import 'package:project/categories/categories_health%20&%20beauty/health%20&%20beauty_ui.dart';
import 'package:project/categories/categoris_phone/phone_ui.dart';
import 'package:project/categories/categoris_supermarket/supermarket_ui.dart';
import 'package:project/categories/home_categories/api_categories.dart';
import 'package:project/categories/home_categories/model_categories.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  Future<CategoriesModel> data;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    data = categories();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffB3B3B4 ),
        body: Center(
            child: FutureBuilder<CategoriesModel>(
                future: data,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                                height: 150,
                                width: 150,
                                margin: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          "https://retail.amit-learning.com/images/categories/l7KggHVGDdgqcpe8dIrmvKAzKSL12smtEt0nMDJq.jpg"),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Fashion()));
                                    });
                                  },
                                  child: Opacity(
                                    opacity: 0.4,
                                    child: Center(
                                      child: Text(
                                        'Fashion',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 25,
                                          backgroundColor: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ),
                                )),
                            Container(
                                height: 150,
                                width: 150,
                                margin: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          "https://retail.amit-learning.com/images/categories/0dFQMWgiSbwa6Z4pcWw24DkV4Fw5TzJIRuosZz0e.jpg"),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: InkWell(
                                  onTap: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Electronics()));
                                  },
                                  child: Opacity(
                                    opacity: 0.4,
                                    child: Center(
                                      child: Text(
                                        'Electronics',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 25,
                                          backgroundColor: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ),
                                )),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                                height: 150,
                                width: 150,
                                margin: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          "https://retail.amit-learning.com/images/categories/ilJxwK6vIPBdflb3EmLHc5DiA7p2apdljYdxHqGo.jpg"),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>BabyProducts()));
                                    });
                                  },
                                  child: Opacity(
                                    opacity: 0.4,
                                    child: Center(
                                      child: Text(
                                        'Baby Products',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 19,
                                          backgroundColor: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ),
                                )),
                            Container(
                                height: 150,
                                width: 150,
                                margin: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          "https://retail.amit-learning.com/images/categories/fJtyicjsNSBhlex1gqT8DgCdsaUodPeAVOkqzc5V.jpg"),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Health()));
                                    });
                                  },
                                  child: Opacity(
                                    opacity: 0.4,
                                    child: Center(
                                      child: Text(
                                        'Health & Beauty',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 19,
                                          backgroundColor: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ),
                                )),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                                height: 150,
                                width: 150,
                                margin: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          "https://retail.amit-learning.com/images/categories/RXUCTZCKFPgdvycsrfQl59f66CQwfJyvu7zIfd72.jpg"),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Phone()));

                                    });
                                  },
                                  child: Opacity(
                                    opacity: 0.4,
                                    child: Center(
                                      child: Text(
                                        'Phones',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 19,
                                          backgroundColor: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ),
                                )),
                            Container(
                                height: 150,
                                width: 150,
                                margin: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          "https://retail.amit-learning.com/images/categories/QKSTMJ9w2lrPvwGjAWmebJL00cMawjOTTbpmFRle.jpg"),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: InkWell(
                                  onTap: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Supermarket()));

                                  },
                                  child: Opacity(
                                    opacity: 0.4,
                                    child: Center(
                                      child: Text(
                                        'Supermarket',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 19,
                                          backgroundColor: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ),
                                )),
                          ],
                        ),
                      ],
                    );
                  } else if (snapshot.hasError) {
                    print('No data found${snapshot.hasError}');
                  }
                  return CircularProgressIndicator();
                })));
  }
}
