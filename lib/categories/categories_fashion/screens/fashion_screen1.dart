import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project/cart/cart.dart';

class FashionScreen1 extends StatefulWidget {
  @override
  _FashionScreen1State createState() => _FashionScreen1State();
}

class _FashionScreen1State extends State<FashionScreen1> {
  int add;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    add = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffD1D0D0),
        shadowColor: Color(0xffD1D0D0),
        elevation: 0,
      ),

      backgroundColor: Color(0xffD1D0D0),
      body: Column(
        children: [
          Container(
            width: 360,
            height: 200,
            child: Image.network(
                "https://retail.amit-learning.com/images/products/mFXrS9i3y07IT9ic7jgcfq90GtMhf91WdlydLsnt.jpg"),
          ),
          Text(
            "Man White Regular Fit Polo Neck Polo T-Shirt",
            style: TextStyle(height: 5),
          ),
          Divider(
            height: 50,
            color: Color(0xff708293 ),
            thickness: 1,
            endIndent: 20,
            indent: 20,
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "200 EGP",
                    style: TextStyle(color: Color(0xff2C4452), fontSize: 15),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                        onPressed: () {
                          setState(() {});
                          add--;
                        },
                        icon: Icon(
                          Icons.remove,
                          color: Color(0xff2C4452),
                        ),
                        iconSize: 20,
                        splashRadius: 15,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text("$add"),
                        style: ElevatedButton.styleFrom(
                          shadowColor: Color(0xffD1D0D0),
                          primary: Color(0xffD1D0D0),
                          onPrimary: Colors.black,
                          minimumSize: Size(1.5, 1),
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            add++;
                          });
                        },
                        icon: Icon(
                          Icons.add,
                          color: Color(0xff2C4452),
                        ),
                        iconSize: 20,
                        splashRadius: 15,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Divider(
            height: 50,
            color: Color(0xff708293 ),
            thickness: 1,
            endIndent: 20,
            indent: 20,
          ),
          Spacer(
            flex: 1,
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Cart()));
              });
            },
            child: Text("Add to cart"),
            style: ElevatedButton.styleFrom(
              primary: Color(0xffD0D0D0),
              elevation: 10,
              // minimumSize: Size(1.5, 1),

            ),
          )
        ],
      ),
    );
  }
}
