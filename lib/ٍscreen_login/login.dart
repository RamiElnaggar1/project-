import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:project/bottom_navigation/bottom_navigation.dart';
import 'package:project/screen_sign_up/sign_up_screen.dart';
import 'package:project/server/server.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool hiddenPassword = true;
  FirebaseAuth auth = FirebaseAuth.instance;
  var loginemail = TextEditingController();
  var loginpassword = TextEditingController();
  bool emaillogin = true;
  bool passwordlogin = true;
  String errorText = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffA5BECF),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: 250,
              height: 150,
              margin: EdgeInsets.all(50),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    "https://www.amit-learning.com/assets/logo.png",
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.email_outlined,
                      color: Color(0xff7B86AA),
                    ),
                    hintText: ("Email"),
                    hintStyle: TextStyle(color: Color(0xff7B86AA)),
                    errorText: emaillogin ? "Please enter email" : null,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xff145466F)),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff145466F))),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.white)),
                    hoverColor: Colors.black),
                keyboardType: TextInputType.emailAddress,
                controller: loginemail,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.lock_outline,
                      color: Color(0xff7B86AA),
                    ),
                    hintText: ("Password"),
                    errorText: passwordlogin ? "Please enter email" : null,
                    suffixIcon: IconButton(
                      icon: Icon(
                        hiddenPassword
                            ? Icons.visibility_off
                            : Icons.remove_red_eye,
                        color: Colors.blueGrey,
                      ),
                      onPressed: () {
                        setState(() {});
                        hiddenPassword = !hiddenPassword;
                      },
                    ),
                    hintStyle: TextStyle(color: Color(0xff7B86AA)),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xff145466F)),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff145466F))),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.white)),
                    hoverColor: Colors.black),
                controller: loginpassword,
                obscureText: hiddenPassword,
              ),
            ),
            Center(
              child: Container(
                child: Column(
                  children: [
                    Text(
                      errorText,
                      style: TextStyle(color: Color(0xffff0000)),
                    ),
                    // SizedBox(
                    //   height: 8.0,
                    // ),
                    ElevatedButton(
                      onPressed: () async {
                        if (loginemail.text.isEmpty)
                          setState(() => emaillogin = true);
                        else
                          setState(() => emaillogin = false);

                        if (loginpassword.text.isEmpty)
                          setState(() => passwordlogin = true);
                        else
                          setState(() => passwordlogin = false);

                        if (passwordlogin && emaillogin) {
                          setState(() =>
                              errorText = 'Please enter email and Password');
                        } else if (await Server()
                            .login(loginpassword.text, loginemail.text)) {
                          loginWithEmailAndPassword(
                            email: loginemail.text,
                            password: loginpassword.text,
                          );
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(builder: (context) => Bottom()),
                              (route) => false);
                        } else {
                          setState(() {
                            errorText = 'Error in email or password';
                          });
                        }
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(345, 50),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have an account?",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SignupScreen()));
                            });
                          },
                          child: Text(
                            "REGISTER",
                            style: TextStyle(
                                color: Colors.blue,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void loginWithEmailAndPassword({String email, String password}) {
    try {
      var user;

      auth
          .signInWithEmailAndPassword(email: email, password: password)
          .then((value) => {user = value.user})
          .whenComplete(() => print('Loged in'));
    } catch (error) {
      print('LogINError::$error');
    }
  }
}
