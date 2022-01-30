import 'package:flutter/material.dart';

class forgotss extends StatefulWidget {
  const forgotss({Key? key}) : super(key: key);

  @override
  _forgotssState createState() => _forgotssState();
}

class _forgotssState extends State<forgotss> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                RaisedButton(onPressed: (){},child: Text('Send'),)
              ],
            ),
          )
        ],
      ),
    );
  }
}
