import 'package:flutter/material.dart';

class hotell extends StatefulWidget {
  const hotell({Key? key}) : super(key: key);

  @override
  _hotellState createState() => _hotellState();
}

class _hotellState extends State<hotell> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Hotel'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage("http://hotelseacrownbd.com/wp-content/uploads/2017/07/Presidential-Suite_Hotel-Sea-Crown_Cox-Bazar-14-570x400.jpg"),
                  fit: BoxFit.cover
                )
              ),
            ),
            title: Text("Hotel Sea Cox"),
            subtitle: Text('Free Wifi'),
            trailing: Text('3000TK'),
          ),
          ListTile(
            leading: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage("http://hotelseacrownbd.com/wp-content/uploads/2017/07/Presidential-Suite_Hotel-Sea-Crown_Cox-Bazar-14-570x400.jpg"),
                      fit: BoxFit.cover
                  )
              ),
            ),
            title: Text("Cox Today"),
            subtitle: Text('Free Wifi'),
            trailing: Text('3000TK'),
          ),
          ListTile(
            leading: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage("http://hotelseacrownbd.com/wp-content/uploads/2017/07/Presidential-Suite_Hotel-Sea-Crown_Cox-Bazar-14-570x400.jpg"),
                      fit: BoxFit.cover
                  )
              ),
            ),
            title: Text("Hotel Sea Crown"),
            subtitle: Text('Free Wifi'),
            trailing: Text('3000TK'),
          ),
          ListTile(
            leading: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage("http://hotelseacrownbd.com/wp-content/uploads/2017/07/Presidential-Suite_Hotel-Sea-Crown_Cox-Bazar-14-570x400.jpg"),
                      fit: BoxFit.cover
                  )
              ),
            ),
            title: Text("Hotel Sea beach"),
            subtitle: Text('Free Wifi'),
            trailing: Text('3000TK'),
          ),
          ListTile(
            leading: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage("http://hotelseacrownbd.com/wp-content/uploads/2017/07/Presidential-Suite_Hotel-Sea-Crown_Cox-Bazar-14-570x400.jpg"),
                      fit: BoxFit.cover
                  )
              ),
            ),
            title: Text("Sea Cox"),
            subtitle: Text('Free Wifi'),
            trailing: Text('3000TK'),
          ),
          ListTile(
            leading: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage("http://hotelseacrownbd.com/wp-content/uploads/2017/07/Presidential-Suite_Hotel-Sea-Crown_Cox-Bazar-14-570x400.jpg"),
                      fit: BoxFit.cover
                  )
              ),
            ),
            title: Text("night cox"),
            subtitle: Text('Free Wifi'),
            trailing: Text('3000TK'),
          ),
          ListTile(
            leading: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage("http://hotelseacrownbd.com/wp-content/uploads/2017/07/Presidential-Suite_Hotel-Sea-Crown_Cox-Bazar-14-570x400.jpg"),
                      fit: BoxFit.cover
                  )
              ),
            ),
            title: Text("Hotel Cox"),
            subtitle: Text('Free Wifi'),
            trailing: Text('3000TK'),
          ),
          ListTile(
            leading: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage("http://hotelseacrownbd.com/wp-content/uploads/2017/07/Presidential-Suite_Hotel-Sea-Crown_Cox-Bazar-14-570x400.jpg"),
                      fit: BoxFit.cover
                  )
              ),
            ),
            title: Text("Royal Cox"),
            subtitle: Text('Free Wifi'),
            trailing: Text('3000TK'),
          ),

        ],
      ),
    );
  }
}
