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
          Center(
            child: ElevatedButton(
              onPressed: () {},
              child: Text("Log Out"),
            ),
          )
        ],
      ),
    );
  }
}
