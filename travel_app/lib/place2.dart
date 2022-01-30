import 'package:flutter/material.dart';
import 'package:show_up_animation/show_up_animation.dart';

import 'book file.dart';

class place2 extends StatefulWidget {
  const place2({Key? key}) : super(key: key);

  @override
  _place2State createState() => _place2State();
}

class _place2State extends State<place2> {

  final List placeList = [
    {
      "link" :"https://3.bp.blogspot.com/-isr3Vi414co/WpTRBJwL7mI/AAAAAAABiT4/E_4YZpIvloA71GYDtxORC-3Mc0iET70fQCLcBGAs/s1600/Cox%2527s%2BBazar%2BBeach%2B-%2Bthe%2Blongest%2Bsea%2Bbeach%2Bin%2Bthe%2Bworld%2B%252811%2529.JPG",
      "name" : "Cox's Bazer Beach",
      "blog" : '''
      One of the longest natural sand beaches in the world.

Stretching a remarkable 75 miles in length, Cox's Bazar Beach is one of the longest uninterrupted natural sand beaches in all of Bangladesh. Most of Cox's Bazar is 660 feet wide at high tide, and 1,300 feet wide at low tide.  
         '''
    },
    {
      "link" : "https://i.pinimg.com/originals/84/9d/42/849d426ad7d5fe8c5afbbefe68bb81ac.jpg",
      "name" : " Naikhongchari ",
      "blog" : '''  
      Naikhongchhari is a southern Upazila of Bandarban District in Chittagong Division, Bangladesh. It is located at 21.4167° North 92.1833° East. It is bounded by Alikadam, Lama, Matamuhuri reserve forests, and Ramu on the north, Myanmar on the south, hill area of north Arakan on the east and Ukhia, Ramu and Chakaria on the west. Here goes insights of Naikhongchhari Upazila it has also a Beautiful lake which surrounded by hill track of naikkhonchari.
        '''
    },
    {
      "link" : "http://1.bp.blogspot.com/-FWp3euI9klk/TqUq_Syr2vI/AAAAAAAAAIA/48KrvyRybo4/w1200-h630-p-k-no-nu/Himchari.jpg",
      "name" : " Himchori ",
      "blog" : '''  Observe the diverse wildlife found at Himchori Waterfall, with over 55 animal species and 117 plant species located in the national park, including elephants, tigers, wild boars, sloths, and many more. A nearby waterfall cascades over moss-covered stones, while the beach looks out over the Bengal bay. Take the forest trail up the hill to enjoy panoramic sea views, or stay nearer the beach and treat yourself to a fresh coconut. Make Himchori Waterfall a centerpiece of your Cox's Bazar vacation itinerary, and find what else is worth visiting using our Cox's Bazar road trip planner.  '''
    },
    {
      "link" : "https://urbanoutdoors.com/wp-content/uploads/2021/05/common-kayaks-feature-image-scaled.jpg",
      "name" : " Kayaking ",
      "blog" : '''  
      If you are looking for something exceptional in a calm environment, the option of kayaking is also there. Just a few kilometres away from the centre point of Cox's Bazar, Reju Khal is fully prepared to allow the travel enthusiasts to go kayaking in the most peaceful ambience - alone or with partners.
        '''
    },
    {
      "link" :"https://bangladeshpost.net/webroot/uploads/featureimage/2020-10/5f775b81db927.jpg",
      "name" : " Marin Drive",
      "blog" : '''  
      Cox's Bazar–Teknaf Marine Drive is an 80-kilometre-long road from Cox's Bazar to Teknaf along the Bay of Bengal and it is the world's longest marine drive. It was inaugurated on May 6, 2017, by Prime Minister Sheikh Hasina.
        '''
    },
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/st.jpg"),
                  fit: BoxFit.cover
              )
          ),
          child: Center(
            child: ListView.builder(
                itemCount: placeList.length,
                itemBuilder: ( BuildContext context,int index ){
                  return Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.black12
                        ),
                        width: double.infinity,
                        child: ShowUpAnimation(
                          delayStart: Duration(seconds: 1),
                          animationDuration: Duration(seconds: 1),
                          curve: Curves.easeOutCirc,
                          direction: Direction.vertical,
                          offset: 0.5,
                          child: ListTile(
                            leading: Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(placeList[index]["link"]),
                                      fit: BoxFit.cover
                                  )
                              ),
                            ),
                            title: Text(placeList[index]["name"],style: TextStyle(color: Colors.white,
                              fontSize: 20,
                            ),),
                            subtitle: Text("See More..."),
                            onTap: (){
                              Route route = MaterialPageRoute(builder: (context)=>booking(placeList[index]));
                              Navigator.push(context, route);
                            },
                          ),
                        ),
                      ),
                      SizedBox(height: 20,)
                    ],
                  );
                }
            ),
          ),
        ),
      ),
    );
  }
}
