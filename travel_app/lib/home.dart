import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:story_view/controller/story_controller.dart';
import 'package:story_view/story_view.dart';
import 'package:travel_app/book%20file.dart';
import 'package:travel_app/gallery.dart';
import 'package:travel_app/hotel.dart';
import 'package:travel_app/login.dart';
import 'package:travel_app/pagestory.dart';
import 'package:travel_app/place.dart';
import 'package:travel_app/place2.dart';
import 'package:travel_app/ticket.dart';


class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {


  bool foool = true;
  final StoryController Controller = StoryController();

  final user = FirebaseAuth.instance.currentUser;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SafeArea(
        child: Drawer(
          backgroundColor: Colors.black54,
          child: ListView(
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/greens.jpg'),
                    fit: BoxFit.cover
                  ),
                ),
                  child: Column(
                    children: [
                      Text('Osman Joher',style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),)

                    ],
                  )),
              ListTile(
                leading: Icon(Icons.bookmark,color: Colors.white,),

                title: Text('Booking',style: TextStyle(color: Colors.white),) ,
              ),
              ListTile(
                leading: Icon(Icons.all_inbox,color: Colors.white,),

                title: Text('Bounty',style: TextStyle(color: Colors.white),) ,
              ),
              ListTile(
                leading: Icon(Icons.hotel,color: Colors.white,),

                title: Text('Resorts',style: TextStyle(color: Colors.white)) ,
              ),
              ListTile(
                leading: Icon(Icons.car_rental,color: Colors.white,),

                title: Text('Ride',style: TextStyle(color: Colors.white)) ,
              ),
              SizedBox(height: 200,),
              ListTile(
                onTap: () async {
                  await FirebaseAuth.instance.signOut();

                  await  GoogleSignIn().signOut();
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>login()));
                },
                textColor: Colors.black,
                leading: Icon(Icons.logout),
                tileColor: Colors.red.withOpacity(0.4),

                title: Text('Log out') ,
              ),

            ],
          ),

        ),
      ),
      backgroundColor: Colors.green.shade50,
      appBar: AppBar(
        title: Text('Traveller',style: TextStyle(color: Colors.green),),
        centerTitle: true,
        actions: [
          AnimatedContainer(duration: Duration(milliseconds: 200),
            width: foool? 50 : 300,
            height: 56,
            decoration: BoxDecoration(

              color: Colors.green,
            ),
            child: Row(
              children: [
                Expanded(

                    child:Container(
                      padding: EdgeInsets.only(left: 15),
                      child: !foool? TextFormField(
                        decoration: InputDecoration(
                            hintText: "search",
                            hintStyle: TextStyle(color: Colors.white),
                            border: InputBorder.none
                        ),
                      ):null,
                    )
                ),
                AnimatedContainer(duration: Duration(milliseconds: 200),
                  child: Material(
                    type: MaterialType.transparency,
                    child: InkWell(
                      child: Icon(Icons.search ,
                        color: Colors.white,
                        size: 30,),
                      onTap: (){
                        setState(() {
                          foool = !foool;
                        });
                      },
                    ),
                  ),)
              ],
            ),
          )
        ],
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              title: Text(user!.displayName!),
              subtitle: Text(user!.email!),
              tileColor: Colors.grey.shade200,
            ),
            Container(
              width: double.infinity,
              height: 100,
              color: Colors.green.shade100,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [

                        GestureDetector(
                          onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>place2()));},
                          child: Container(
                            width: 100,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.green.shade700,
                              borderRadius: BorderRadius.circular(30)
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.location_on),
                                Text('place')
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 20,),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>gallery()));
                          },
                          child: Container(
                            width: 100,
                            height: 50,
                            decoration: BoxDecoration(
                                color: Colors.green.shade700,
                                borderRadius: BorderRadius.circular(30)
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.photo_album_sharp),
                                Text('Gallery')
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 20,),
                        Container(
                          width: 100,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.green.shade700,
                              borderRadius: BorderRadius.circular(30)
                          ),
                          child: GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>hotell()));
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.hotel),
                                Text('Hotel')
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 20,),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>tickett()));
                          },
                          child: Container(
                            width: 100,
                            height: 50,
                            decoration: BoxDecoration(
                                color: Colors.green.shade700,
                                borderRadius: BorderRadius.circular(30)
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.airplane_ticket),
                                Text('Ticket')
                              ],
                            ),
                          ),
                        ),


                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),
            Text('32 Places',style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold
            ),),
            GestureDetector(
              onDoubleTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>pageStory()));
              },
              child: Container(
                width: double.infinity,
                height: 300,
                child: StoryView(
                    controller: Controller,
                  storyItems: [
                    StoryItem.inlineImage(
                        url: "https://www.coxsbazarcity.com/wp-content/uploads/2019/12/Coxs-Bazar-Exclusive-picture-coxsbazarcity.com-21.jpg",
                        controller: Controller,

                    caption: Text("Cox's Bazer")),
                    StoryItem.inlineImage(
                        url: "https://images.unsplash.com/photo-1592321025971-b51d70f8ce17?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8Y294JTIwYmF6YXIlMjBzZWElMjBiZWFjaHxlbnwwfHwwfHw%3D&w=1000&q=80",
                        controller: Controller,

                        caption: Text("Cox's Bazer")),
                    StoryItem.inlineImage(
                        url: "https://images6.fanpop.com/image/photos/41700000/Cox-s-Bazar-Bangladesh-bangladesh-41724937-1920-1080.jpg",
                        controller: Controller,

                        caption: Text("Cox's Bazer")),
                    StoryItem.inlineImage(
                        url: "https://i.pinimg.com/originals/63/ba/1b/63ba1b23703a041474b48188d2945115.jpg",
                        controller: Controller,

                        caption: Text("Cox's Bazer")),
                    StoryItem.inlineImage(
                        url: "https://i.pinimg.com/originals/63/ba/1b/63ba1b23703a041474b48188d2945115.jpg",
                        controller: Controller,

                        caption: Text("Cox's Bazer")),

                  ],
                progressPosition: ProgressPosition.bottom,
                  repeat: true,
                  inline: false,
                ),
              ),
            ),
            Text("TOP RATING 3 PLACE",style: TextStyle(
              color: Colors.redAccent,
              fontSize: 30,
              fontWeight: FontWeight.w500
            ),),
            Container(
              width: double.infinity,
              height: 300,
              child: ListView(
                children: [
                  ListTile(
                    title: Text('Cox bazar',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),),
                    subtitle: Text("⭐⭐⭐⭐⭐"),
                    trailing: Image.network("https://images.unsplash.com/photo-1608958435020-e8a7109ba809?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8Y294JTIwYmF6YXIlMjBzZWElMjBiZWFjaHxlbnwwfHwwfHw%3D&w=1000&q=80"),

                  ),
                  ListTile(
                    title: Text('Saint Martin',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),),
                    subtitle: Text("⭐⭐⭐⭐⭐"),
                    trailing: Container(

                        child: Image.network("https://cdn.britannica.com/87/93987-050-779DFE3F/Boats-harbour-Marcel-Cove-Lesser-Antilles-Saint-Martin.jpg",width: 110,)),
                  ),
                  ListTile(
                    title: Text('Teknaf Upazila',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),),
                    subtitle: Text("⭐⭐⭐⭐⭐"),
                    trailing: Image.network("https://images.unsplash.com/photo-1608958435020-e8a7109ba809?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8Y294JTIwYmF6YXIlMjBzZWElMjBiZWFjaHxlbnwwfHwwfHw%3D&w=1000&q=80"),
                  ),




                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}
