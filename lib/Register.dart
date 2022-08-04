import 'package:flutter/material.dart';
import 'Login.dart'
    '';

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(right: 300),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Login()));
                  },
                  child: Icon(
                    Icons.arrow_back_sharp,
                    size: 50,
                    color: Colors.green,
                  ),
                ),
              ),
              Text(
                "Create Account",
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
              Text(
                "Create a new account",
                style: TextStyle(fontSize: 20, color: Colors.grey),
              ),
              SizedBox(
                height: 40,
              ),
              Theme(
                data: Theme.of(context).copyWith(
                    colorScheme: ThemeData()
                        .colorScheme
                        .copyWith(primary: Colors.green)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    style: TextStyle(color: Colors.green),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      labelStyle: TextStyle(color: Colors.black),
                      prefixIcon: Icon(Icons.person_rounded),
                      labelText: "NAME",
                    ),
                  ),
                ),
              ),
              Theme(
                data: Theme.of(context).copyWith(
                    colorScheme: ThemeData()
                        .colorScheme
                        .copyWith(primary: Colors.green)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    style: TextStyle(color: Colors.green),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      labelStyle: TextStyle(color: Colors.black),
                      prefixIcon: Icon(Icons.email),
                      labelText: "EMAIL",
                    ),
                  ),
                ),
              ),
              Theme(
                data: Theme.of(context).copyWith(
                    colorScheme: ThemeData()
                        .colorScheme
                        .copyWith(primary: Colors.green)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    style: TextStyle(color: Colors.green),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      labelStyle: TextStyle(color: Colors.black),
                      prefixIcon: Icon(Icons.phone_android),
                      labelText: "PHONE",
                    ),
                  ),
                ),
              ),
              Theme(
                data: Theme.of(context).copyWith(
                    colorScheme: ThemeData()
                        .colorScheme
                        .copyWith(primary: Colors.green)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    style: TextStyle(color: Colors.green),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      labelStyle: TextStyle(color: Colors.black),
                      prefixIcon: Icon(Icons.lock_outline),
                      labelText: "PASSWORD",
                    ),
                  ),
                ),
              ),
              Theme(
                data: Theme.of(context).copyWith(
                    colorScheme: ThemeData()
                        .colorScheme
                        .copyWith(primary: Colors.green)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    style: TextStyle(color: Colors.green),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      labelStyle: TextStyle(color: Colors.black),
                      prefixIcon: Icon(Icons.lock_outlined),
                      labelText: "CONFIRM PASSWORD",
                    ),
                  ),
                ),
              ),
              Container(
                  width: 310,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.green),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Login()));
                      },
                      child: Text(
                        "Create Account",
                        style: TextStyle(fontSize: 10, color: Colors.white),
                      ))),
              SizedBox(
                height: 25,
              ),
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: "Already have a accounnt?",
                    style: TextStyle(color: Colors.black)),
                TextSpan(text: " Login", style: TextStyle(color: Colors.green))
              ]))
            ],
          ),
        ),
      ),
    );
  }
}
