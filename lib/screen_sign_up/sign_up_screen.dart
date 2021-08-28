import 'dart:ui';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:project/%D9%8Dscreen_login/login.dart';
import 'package:project/server/server.dart';

class SignupScreen extends StatefulWidget {
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  String _email = "";
  String _password = "";

  // final _keyform = GlobalKey<FormState>();
  FirebaseAuth auth = FirebaseAuth.instance;
  var _emailController = TextEditingController();
  var _passwordController = TextEditingController();
  bool _hiddenPassword = true;
  bool email = true;
  bool password = true;
  String _error = '';
  bool _isButtonActive = false;

  @override
  Widget build(BuildContext context) {
    if (_passwordController.text.isNotEmpty &&
        _emailController.text.isNotEmpty) {
      setState(() => _isButtonActive = true);
    } else {
      setState(() => _isButtonActive = false);
    }
    return Scaffold(
      backgroundColor: Color(0xffA5BECF),
      body: Form(
        // key: _keyform,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: 250,
                height: 150,
                margin: EdgeInsets.all(50),
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://www.amit-learning.com/assets/logo.png")),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  onChanged: (value) => _email = value,
                  validator: (value) =>
                      _email.isEmpty ? "Please enter email" : null,
                  decoration: InputDecoration(
                    hintText: "Email",
                    prefixIcon: Icon(Icons.email_outlined),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xff145466F),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xff145466F),
                      ),
                    ),
                  ),
                  keyboardType: TextInputType.emailAddress,
                  controller: _emailController,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  onChanged: (value) => {
                    _password = value,
                    setState(() => {}),
                  },
                  validator: (value) => _password.length < 6
                      ? "Please create a strong password"
                      : null,
                  decoration: InputDecoration(
                    hintText: "Password",
                    prefixIcon: Icon(Icons.security),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _hiddenPassword
                            ? Icons.visibility_off
                            : Icons.remove_red_eye,
                        color: Colors.blueGrey,
                      ),
                      onPressed: () {
                        setState(() {});
                        _hiddenPassword = !_hiddenPassword;
                      },
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xff145466F),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xff145466F),
                      ),
                    ),
                  ),
                  controller: _passwordController,
                  obscureText: _hiddenPassword,
                ),
              ),
              Text(
                _error,
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 15,
                ),
              ),
              ElevatedButton(
                onPressed: _isButtonActive
                    ? () async {
                        if (_passwordController.text.isNotEmpty &&
                            _emailController.text.isNotEmpty) {
                          creatAccount(
                              email: _emailController.text,
                              password: _passwordController.text);
                          await Server()
                              .signUp(
                                  password: _passwordController.text,
                                  email: _emailController.text,
                                  name: 'test')
                              .whenComplete(
                                () => {
                                  _emailController.clear(),
                                  _passwordController.clear(),
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Login(),
                                    ),
                                  ),
                                },
                              );
                        } else {
                          setState(
                              () => _error = 'Please enter email and Password');
                        }

                        // if(_keyform.currentState.validate()){
                        //
                        //   print("Done");
                        // }
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(builder: (context) => Login()),
                            (route) => false);
                      }
                    : null,
                style: ElevatedButton.styleFrom(minimumSize: Size(350, 50)),
                child: Text(
                  "Sign up",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                children: [
                  TextButton(
                      onPressed: () {
                        setState(() {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Login()));
                        });
                      },
                      child: Text(
                        "do you have an account ➡️",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  void creatAccount({String password, String email}) async {
    try {
      UserCredential userCredential = await auth.createUserWithEmailAndPassword(
          email: email, password: password);
      print(userCredential.user.email);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }

  void passAccount() async {
    try {
      UserCredential userCredential = await auth.signInWithEmailAndPassword(
          email: _emailController.text, password: _passwordController.text);
      print(userCredential.user.email);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }
}
