import 'package:coba_flutter/Register.dart';
import 'package:flutter/material.dart';
import 'Home.dart';
import 'Register.dart';
import 'ListAllSport.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController ctlusername = TextEditingController();
  TextEditingController ctlpassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.account_circle_rounded,color: Colors.grey[200],
              size: 135,
            ),
            Text(
              "Welcome Back",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Text(
              "Sign on continue",
              style: TextStyle(fontSize: 15,color: Colors.grey),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Theme(
                data: Theme.of(context).copyWith(colorScheme: ThemeData().colorScheme.copyWith(primary: Colors.green)),
                child: TextFormField(
                  controller: ctlusername,
                  style: TextStyle(color: Colors.green),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    labelStyle: TextStyle(color: Colors.black),
                    prefixIcon: Icon(Icons.email),
                    labelText: 'EMAIL',
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
                child: Theme(
                data: Theme.of(context).copyWith(colorScheme: ThemeData().colorScheme.copyWith(primary: Colors.green)),
                child: TextFormField(
                  controller: ctlpassword,
                  obscureText: true,
                  style: TextStyle(color: Colors.green),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    labelStyle: TextStyle(color: Colors.black),
                    prefixIcon: Icon(Icons.lock),
                    labelText: 'PASSWORD',
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 150.0),
              child: Text("Forgot Password?", style: TextStyle(color: Colors.green),),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
                width: 310,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Colors.green),
                    onPressed: Onlogin,
                    child: Text(
                      "LOGIN",
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ))),
            SizedBox(height: 25,),
            // Text("Dont't have account? create a new account"),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Register(),));
              },
              child: RichText(text: TextSpan(
                children: [
                  TextSpan(
                    text: "Don't have account?",
                    style: TextStyle(
                      color: Colors.black
                    )
                  ),
                  TextSpan(
                    text: " create a new account",
                    style: TextStyle(
                      color: Colors.green
                    ),
                  ),
                ],
              )),
            ),
          ],
        ),
      ),
    ));
  }

  void Onlogin() {
    if (ctlusername.text == "admin" && ctlpassword.text == "admin") {
      Navigator.push(context, MaterialPageRoute(builder: (context) => ListAllSport()));
    }
  }
}
