import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth_notebook/screen/log_out.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _email = TextEditingController();
  final _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            Column(
              children: [
                CircleAvatar(
                  radius: 40,
                  child: Icon(
                    Icons.account_circle_rounded,
                    size: 55,
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                Text("Sign Up Page",style: TextStyle(color: Colors.amberAccent,fontSize: 25,fontWeight: FontWeight.bold),),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                    labelText: "Full Name",
                    hintText: "Enter Your Name",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: _email,
                  decoration: InputDecoration(
                    labelText: "Email Name",
                    hintText: "Enter Your Email Name",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: _password,
                  decoration: InputDecoration(
                    labelText: "Password",
                    hintText: "Enter Your Password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                    labelText: "Mobile Number",
                    hintText: "Enter Your Mobile Number",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    onPressed: () {
                      FirebaseAuth.instance
                          .createUserWithEmailAndPassword(
                          email: _email.text, password: _password.text)
                          .then((value) => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LogOutPage())));
                    },
                    child: Text("Sign Up"))
              ],
            ),
          ],
        ),
      )
    );
  }
}
