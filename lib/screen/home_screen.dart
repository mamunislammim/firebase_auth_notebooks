import 'package:cloud_firestore/cloud_firestore.dart';
 import 'package:flutter/material.dart';

class MyHomescreen extends StatefulWidget {
  const MyHomescreen({Key? key}) : super(key: key);

  @override
  State<MyHomescreen> createState() => _MyHomescreenState();
}

class _MyHomescreenState extends State<MyHomescreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
      ),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection("Book").snapshots(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (!snapshot.hasData) {
            return  Center(
              child: CircularProgressIndicator(
                color: Colors.amberAccent,
              ),
            );
          } else {
            return ListView.builder(
              itemCount: snapshot.data.docs.length,
              itemBuilder: (BuildContext context, int index) {
                DocumentSnapshot data = snapshot.data.docs[index];
                String x = data["name"].toString();
                return ListTile(
                  tileColor: Colors.teal,
                  title: Text(data['name']),
                  leading: CircleAvatar(child: Text("${x[0]}")),
                  trailing: Text(data['code']),
                );
              },
            );
          }
        },
      ),
    );
  }
}

//
// StreamBuilder(
// stream: FirebaseFirestore.instance.collection("test").snapshots(),
// builder: (BuildContext context, AsyncSnapshot snapshot) {
// if (!snapshot.hasData) {
// return  CircularProgressIndicator(
// color: Colors.amberAccent,
// );
// } else {
// return ListView.builder(
// itemCount: snapshot.data.docs.length,
// itemBuilder: (BuildContext context, int index) {
// DocumentSnapshot data = snapshot.data.docs[index];
// return Container(
// child: Text(data['name']),
// );
// },
// );
// }
// },
// ),
// );



//
//
//
// StreamBuilder(
// stream: FirebaseFirestore.instance.collection("Books").snapshots(),
// builder: (BuildContext context, AsyncSnapshot snapshot){
// if(!snapshot.hasData){
// return Text("Loading");
// }
// else{
// return ListView.builder(
// itemCount: snapshot.data.docs.length,
// itemBuilder: (BuildContext context, int index){
// DocumentSnapshot data = snapshot.data.doc[index];
// return Text(data["name"]);
// }
// );
// }
// },
// )