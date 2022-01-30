import 'package:flutter/material.dart';

class booking extends StatefulWidget {
  // const booking({Key? key}) : super(key: key);

  var readyBookig;
  booking(this.readyBookig);


  @override
  _bookingState createState() => _bookingState(this.readyBookig);
}

class _bookingState extends State<booking> {
  var ready;
  _bookingState(this.ready);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [

          Container(
            width: double.infinity,
            height: 300,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(ready["link"]),
                    fit: BoxFit.cover
                )
            ),
          ),

          Container(
            width: double.infinity,
            height: 250,
            color: Colors.grey,
            child: ListView(
              children: [
                ListTile(
                  title: Text(ready["name"]),
                  subtitle: Text(ready["blog"]),

                )
              ],
            )
          ),
        ],
      ),
    );
  }
}
