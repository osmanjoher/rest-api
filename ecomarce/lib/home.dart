import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {

  final List<String> urlImages = [
    "https://images.ctfassets.net/371ugtyffwio/44jlsBMUobOggRYyko9Ody/b5ae3862ae61ff55832ab27e84b56984/Hero_M1_hero_whiteshirt-min.jpg",
    "https://media.zigcdn.com/media/model/2021/Nov/front-right-view-675674576_930x620.jpg",
    "https://thumbor.forbes.com/thumbor/960x0/https%3A%2F%2Fspecials-images.forbesimg.com%2Fimageserve%2F5d37038495e0230008f64ec1%2F2020-Cadillac-CT4-V%2F960x0.jpg%3FcropX1%3D569%26cropX2%3D5130%26cropY1%3D347%26cropY2%3D2912",
    "http://3.bp.blogspot.com/_QEKFOK_r_p4/TOKyxbZPACI/AAAAAAAABBU/BvBXCDLsPQs/s1600/Choper+Motorcycle++Modification+2.jpg"

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu,color: Colors.red,),
        title: Text('Company name',style:
          TextStyle(
            color: Colors.red
          ),),
        centerTitle: true,
        backgroundColor: Colors.white,

      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CarouselSlider(items: urlImages.map((item) => Container(
              child: Image.network(item,
              fit: BoxFit.cover,
              width: MediaQuery.of(context).size.width,),
            )).toList(),
                options: CarouselOptions(
                  autoPlay: true,
                  aspectRatio: 2.0,
                  enlargeCenterPage: true,
                )),
            SizedBox(height: 50,),
            Text('Shirt'),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: GridView.count(crossAxisCount: 2,
              children: [
                Card(
                  color: Colors.red,
                  child: Stack(
                    children: [
                      Image.network('https://5.imimg.com/data5/TP/ST/MY-31253615/kids-formal-shirt-250x250.jpg'),
                      Container(
                        margin: EdgeInsets.only(left: 0,top: 155),
                        child: Text('Price 500tk') ,
                      )



                    ],
                  ),
                ),
                Card(
                  color: Colors.red,
                  child: Stack(
                    children: [
                      Image.network('https://ae01.alicdn.com/kf/H32ca0b2bc34c4e8abd8593aec71c6934n/INCERUN-Summer-Men-Shirt-Colorful-Striped-Short-Sleeve-Lapel-Button-Blouse-2021-Fashion-Streetwear-Casual-Hawaiian.jpg'),
                      Container(
                        margin: EdgeInsets.only(left: 0,top: 155),
                        child: Text('Price 500tk') ,
                      )



                    ],
                  ),
                ),
                Card(
                  color: Colors.red,
                  child: Stack(
                    children: [
                      Image.network('https://imgaz1.chiccdn.com/thumb/large/oaupload/newchic/images/6D/59/4b211a09-05d8-4db7-bb8e-104744ee113b.jpg?s=702x936',
                      fit: BoxFit.cover,),
                      Container(
                        margin: EdgeInsets.only(left: 0,top: 155),
                        child: Text('Price 500tk') ,
                      )



                    ],
                  ),
                ),
                Card(
                  color: Colors.red,
                  child: Stack(
                    children: [
                      Image.network('https://imgaz3.staticbg.com/thumb/large/oaupload/banggood/images/B0/49/a038972a-46c7-4a46-ad25-428518ade8ae.jpg'),
                      Container(
                        margin: EdgeInsets.only(left: 0,top: 155),
                        child: Text('Price 500tk') ,
                      )



                    ],
                  ),
                ),
              ],),
            )
          ],
        ),
      ),
    );
  }
}
