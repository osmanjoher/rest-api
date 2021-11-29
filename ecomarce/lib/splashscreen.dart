import 'dart:async';
import 'package:ecomarce/home.dart';
import 'package:flutter/material.dart';

class splashh extends StatefulWidget {
  const splashh({Key? key}) : super(key: key);

  @override
  _splashhState createState() => _splashhState();
}

class _splashhState extends State<splashh> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5), ()=>Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>home()), (route) => false));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text('your company',
            style: TextStyle(
              color: Colors.red,
              fontSize: 50,
              fontWeight: FontWeight.bold
            ),),
          )
        ],
      ),
    );
  }
}
