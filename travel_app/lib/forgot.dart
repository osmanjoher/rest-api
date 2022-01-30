import 'package:flutter/material.dart';

class forgots extends StatefulWidget {
  const forgots({Key? key}) : super(key: key);

  @override
  _forgotsState createState() => _forgotsState();
}

class _forgotsState extends State<forgots> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red.withOpacity(0.4),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                      labelText: "Email",
                      hintText: "Type Your Email"
                  ),
                ),
                RaisedButton(onPressed: (){
                  Navigator.pop(context);
                },child: Text('Send'),)
              ],
            ),
          )
        ],
      ),
    );
  }
}
