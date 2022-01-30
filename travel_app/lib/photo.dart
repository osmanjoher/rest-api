import 'package:flutter/material.dart';

class phots extends StatefulWidget {
  // const phots({Key? key}) : super(key: key);
  var readphots;
  phots(this.readphots);

  @override
  _photsState createState() => _photsState(this.readphots);
}

class _photsState extends State<phots> {
  var read;
  _photsState(this.read);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(read["imagelink"])
          )
        ),
      ),
    );
  }
}
