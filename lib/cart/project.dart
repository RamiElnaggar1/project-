import 'package:flutter/material.dart';
import 'package:project/cart/cart_db_helper.dart';
import 'package:project/cart/cart_model.dart';

class Project extends StatefulWidget {
  @override
  _ProjectState createState() => _ProjectState();
}

class _ProjectState extends State<Project> {
  DbHelper dbHelper=DbHelper();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FutureBuilder<List<ModelCart>>(
            future: dbHelper.selectAllprject(),
            builder: (context, snapshot) {
              if (snapshot.connectionState != ConnectionState.done) {
                return CircularProgressIndicator();
              } else if (snapshot.hasData) {
                print("Snapshot data::: ${snapshot.data}");
                List<ModelCart> modelCart = snapshot.data;
                return ListView.builder(
                    itemCount: modelCart.length,
                    itemBuilder: (context, index) {
                      ModelCart cart = modelCart[index];
                      return ListTile(
                        title: Text(cart.name),
                        subtitle: Text((cart.number).toString()),
                      );
                    });
              } else {

                return Text("Not purchased");
              }
            }),
      ),
    );
  }
}
