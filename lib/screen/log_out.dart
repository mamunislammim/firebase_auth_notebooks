import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth_notebook/screen/home_screen.dart';
import 'package:firebase_auth_notebook/screen/sign_in.dart';
import 'package:flutter/material.dart';

class LogOutPage extends StatefulWidget {
  const LogOutPage({Key? key}) : super(key: key);

  @override
  State<LogOutPage> createState() => _LogOutPageState();
}

class _LogOutPageState extends State<LogOutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "Thank You",
              style: TextStyle(color: Colors.deepOrange, fontSize: 25),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> MyHomescreen()));
              }, child: Text("Go To Home Page")),
              ElevatedButton(
                onPressed: () {
                  FirebaseAuth.instance.signOut().then((value) =>
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignInPage())));
                },
                child: Text("Log Out"),
              ),
            ],
          )
        ],
      ),
    );
  }
}
