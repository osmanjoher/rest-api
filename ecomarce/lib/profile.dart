import 'package:flutter/material.dart';

class profiles extends StatefulWidget {
  const profiles({Key? key}) : super(key: key);

  @override
  _profilesState createState() => _profilesState();
}

class _profilesState extends State<profiles> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text('profile',style: TextStyle(color: Colors.red),),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Stack(
        alignment: Alignment.center,
        clipBehavior: Clip.none,
        children: [
          Container(
            width: double.infinity,
            height: 200,
            color: Color(0xff6B0000),
          ),
          Positioned(
            bottom: -120,
            right: -22,
            child: CircleAvatar(
              backgroundColor: Color(0xff6B0000),
              radius: 200,
            ),
          ),
          Positioned(
            bottom: -650,
            left: -18,
            child: CircleAvatar(
              backgroundColor: Color(0xff6B0000),
              radius: 200,
            ),
          ),
          Container(
            width: double.infinity,
            height: 50,
            color: Colors.white,
          ),


          Positioned(
           bottom: -300,
            child: Container(
              width: 310,
              height: 400,
              decoration: BoxDecoration(
                  color: Colors.black45,
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: ListView(
                children: [
                  SizedBox(height: 70,),
                  ListTile(
                    onTap: (){},
                    selectedTileColor: Colors.green,
                    leading: Icon(Icons.account_box,size: 30,color: Colors.red,),
                    title: Text('Account',style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),),
                    trailing: Icon(Icons.arrow_right,size: 30,color: Colors.red,),
                  ),
                  ListTile(
                    onTap: (){},
                    selectedTileColor: Colors.green,
                    leading: Icon(Icons.shop_2_sharp,size: 30,color: Colors.red,),
                    title: Text('Order',style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),),
                    trailing: Icon(Icons.arrow_right,size: 30,color: Colors.red,),
                  ),
                  ListTile(
                    onTap: (){},
                    selectedTileColor: Colors.green,
                    leading: Icon(Icons.account_box,size: 30,color: Colors.red,),
                    title: Text('Setting',style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),),
                    trailing: Icon(Icons.arrow_right,size: 30,color: Colors.red,),
                  ),
                  ListTile(
                    onTap: (){},
                    selectedTileColor: Colors.green,
                    leading: Icon(Icons.inbox,size: 30,color: Colors.red,),
                    title: Text('Inbox',style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),),
                    trailing: Icon(Icons.arrow_right,size: 30,color: Colors.red,),
                  ),
                  SizedBox(height: 20,),
                  ListTile(
                    onTap: (){},
                    selectedTileColor: Colors.green,
                    leading: Icon(Icons.logout,size: 30,color: Colors.red,),
                    title: Text('Log Out',style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/mee.jpg',
                )
              )
            ),
          ),

        ],
      ),
    );
  }
}
