import 'package:flutter/material.dart';
import 'package:travel_app/photo.dart';

class gallery extends StatefulWidget {
  const gallery({Key? key}) : super(key: key);

  @override
  _galleryState createState() => _galleryState();
}

class _galleryState extends State<gallery> {

   final List ImageList = [
    {
      "imagelink": "https://media-cdn.tripadvisor.com/media/photo-s/1b/4e/60/58/cox-s-bazar-is-a-town.jpg"
    },
    {
      "imagelink": "https://images.prothomalo.com/prothomalo-english%2Fimport%2Fmedia%2F2019%2F10%2F29%2F4c567690cd3663ddb127dc60c27e5ae6-Tourism-1.jpeg?auto=format%2Ccompress&format=webp&w=400&dpr=2.6"
    },
    {
      "imagelink": "https://www.travelbeginsat40.com/wp-content/uploads/2019/12/Longest-beach-in-the-world-1.jpg"
    },
    {
      "imagelink": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/10/e2/f8/43/longest-sea-beach-in.jpg?w=700&h=-1&s=1"
    },
    {
      "imagelink": "https://ichef.bbci.co.uk/news/464/mcs/media/images/62424000/jpg/_62424278_coxbazarpicture9.jpg"
    },
    {
      "imagelink": "https://live.staticflickr.com/852/43873348101_19556bae10_b.jpg"
    },
    {
      "imagelink": "https://www.worldbank.org/content/dam/photos/1440x600/2021/jan/BEOFD-Boat-Banner.jpg"
    },
    {
      "imagelink": "https://www.tourismkeari.com/static/products/25e31bae7eced2.jpg"
    },
    {
      "imagelink": "https://i0.wp.com/ecoxsbazar.com/wp-content/uploads/2021/01/Cox-Bazar.png?fit=600%2C359&ssl=1"
    },
    {
      "imagelink": "https://image.shutterstock.com/image-photo/beautiful-sunset-world-famous-bazar-260nw-1424456042.jpg"
    },
    {
      "imagelink": "https://media-cdn.tripadvisor.com/media/photo-s/0e/55/b1/46/hills-at-cox-s-bazar.jpg"
    },
    {
      "imagelink": "https://bdwallpapergallery.files.wordpress.com/2012/04/beauty-of-bangladesh_coxbazar.jpg"
    },
    {
      "imagelink": "https://images.unsplash.com/photo-1599074914978-2946b69e5a4a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8YmVhdXRpZnVsJTIwYmFuZ2xhZGVzaHxlbnwwfHwwfHw%3D&w=1000&q=80"
    },
    {
      "imagelink": "https://live.staticflickr.com/390/19566703234_afa987e9ed_b.jpg"
    },
   
  ];




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white30,
      appBar: AppBar(
        title: Text('gallery'),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Stack(
        overflow: Overflow.visible,
        children: [
          Container(
            width: double.infinity,
            height: 100,
            color: Colors.white,
            child: Center(
              child: Text("Gallery",style:TextStyle(
                color: Colors.green,
                fontSize: 50,
                fontWeight: FontWeight.w700
              ),),
            ),
          ),
          Positioned(
            right: 22,
            bottom: -690,
            child: Container(
              width: MediaQuery.of(context).size.width *0.9,
              height: MediaQuery.of(context).size.height/1,
              decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.circular(10)
              ),
              child: GridView.builder(
                      itemCount: ImageList.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
                      itemBuilder: ( BuildContext context, int index){
                        return SingleChildScrollView(
                          child: Column(
                            children: [
                              SingleChildScrollView(
                                child: Container(
                                  width :100,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage(ImageList[index]["imagelink"]),
                                      fit: BoxFit.cover
                                    )
                                  ),
                                  child: GestureDetector(
                                    onTap :(){
                                      Route route = MaterialPageRoute(builder: (context)=>phots(ImageList[index]));
                                      Navigator.push(context, route);
                                    },
                                  ),
                                ),
                              )
                            ],
                          ),
                        );
                      },)
               

            ),
          )

        ],
      ),
    );
  }
}
