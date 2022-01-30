import 'package:flutter/material.dart';
import 'package:story_view/controller/story_controller.dart';
import 'package:story_view/story_view.dart';

class reviews extends StatefulWidget {
  const reviews({Key? key}) : super(key: key);

  @override
  _reviewsState createState() => _reviewsState();
}

class _reviewsState extends State<reviews> {
  
  final StoryController controller = StoryController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){},icon: Icon(Icons.arrow_back,color: Colors.red,)),
        title: Text('Reviews',style: TextStyle(color: Colors.red),),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: ListView(
        children: [
          Container(
            width: double.infinity,
            height: 300,
            child: StoryView(
              controller: controller,
              storyItems: [
                StoryItem.text(title: 'Customer \n reviews' , backgroundColor: Colors.red,),
                StoryItem.inlineImage(
                    url: 'https://www.thebudgetbabe.com/uploads/2017/201706/sheinfashionsiteshoppingreview_-_5.jpg',
                    controller: controller),
                StoryItem.inlineImage(
                    url: 'https://i.pinimg.com/236x/25/67/a2/2567a294c3f83262272ecdfea4762779--outfits-for-men-dope-outfits.jpg',
                    controller: controller),
                StoryItem.inlineImage(
                    url: 'https://i.pinimg.com/564x/3a/07/b7/3a07b7861cb7852e1457472bf2e1745d.jpg',
                    controller: controller),
                StoryItem.inlineImage(
                    url: 'https://bikeadvice.in/wp-content/uploads/2012/03/TVS-Star-City-Review-by-Anoop-BikeAdvice-2.jpg',
                    controller: controller)
              ],
              repeat: true,
              inline: true,


            ),
          ),
          SizedBox(height: 20,),
          Container(
            color: Colors.grey,
            width: double.infinity,
            height: 280,
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(Icons.person),
                    Text('Anymous',style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),)
                  ],
                ),
                Row(
                  children: [
                    Text('Its amazing, thank you'),
                  ],
                ),
                Image.network('https://www.thebudgetbabe.com/uploads/2017/201706/sheinfashionsiteshoppingreview_-_5.jpg',
                  width: 150,
                height: 150,),
                SizedBox(height: 23,),
                Row(
                  children: [
                    IconButton(onPressed: (){}, icon: Icon(Icons.favorite),color: Colors.red,iconSize: 50,),
                    Text('LOVE',style: TextStyle(
                      fontSize: 20,
                      color: Colors.white
                    ),),
                    Spacer(),
                    IconButton(onPressed: (){}, icon: Icon(Icons.comment),color: Colors.red,iconSize: 30,),
                    Text('Comment',style: TextStyle(
                      fontSize: 20,
                      color: Colors.white
                    ),),

                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 10,),
          Container(
            color: Colors.grey,
            width: double.infinity,
            height: 280,
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(Icons.person),
                    Text('Anymous',style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                    ),)
                  ],
                ),
                Row(
                  children: [
                    Text('Its amazing, thank you'),
                  ],
                ),
                Image.network('https://i.pinimg.com/236x/25/67/a2/2567a294c3f83262272ecdfea4762779--outfits-for-men-dope-outfits.jpg',
                  width: 150,
                  height: 150,),
                SizedBox(height: 23,),
                Row(
                  children: [
                    IconButton(onPressed: (){}, icon: Icon(Icons.favorite),color: Colors.red,iconSize: 50,),
                    Text('LOVE',style: TextStyle(
                        fontSize: 20,
                        color: Colors.white
                    ),),
                    Spacer(),
                    IconButton(onPressed: (){}, icon: Icon(Icons.comment),color: Colors.red,iconSize: 30,),
                    Text('Comment',style: TextStyle(
                        fontSize: 20,
                        color: Colors.white
                    ),),

                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 10,),
          Container(
            color: Colors.grey,
            width: double.infinity,
            height: 280,
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(Icons.person),
                    Text('Anymous',style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                    ),)
                  ],
                ),
                Row(
                  children: [
                    Text('Its amazing, thank you'),
                  ],
                ),
                Image.network('https://i.pinimg.com/564x/3a/07/b7/3a07b7861cb7852e1457472bf2e1745d.jpg',
                  width: 150,
                  height: 150,),
                SizedBox(height: 23,),
                Row(
                  children: [
                    IconButton(onPressed: (){}, icon: Icon(Icons.favorite),color: Colors.red,iconSize: 50,),
                    Text('LOVE',style: TextStyle(
                        fontSize: 20,
                        color: Colors.white
                    ),),
                    Spacer(),
                    IconButton(onPressed: (){}, icon: Icon(Icons.comment),color: Colors.red,iconSize: 30,),
                    Text('Comment',style: TextStyle(
                        fontSize: 20,
                        color: Colors.white
                    ),),

                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 10,),
          Container(
            color: Colors.grey,
            width: double.infinity,
            height: 280,
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(Icons.person),
                    Text('Anymous',style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                    ),)
                  ],
                ),
                Row(
                  children: [
                    Text('Its amazing, thank you'),
                  ],
                ),
                Image.network('https://bikeadvice.in/wp-content/uploads/2012/03/TVS-Star-City-Review-by-Anoop-BikeAdvice-2.jpg',
                  width: 150,
                  height: 150,),
                SizedBox(height: 23,),
                Row(
                  children: [
                    IconButton(onPressed: (){}, icon: Icon(Icons.favorite),color: Colors.red,iconSize: 50,),
                    Text('LOVE',style: TextStyle(
                        fontSize: 20,
                        color: Colors.white
                    ),),
                    Spacer(),
                    IconButton(onPressed: (){}, icon: Icon(Icons.comment),color: Colors.red,iconSize: 30,),
                    Text('Comment',style: TextStyle(
                        fontSize: 20,
                        color: Colors.white
                    ),),

                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
