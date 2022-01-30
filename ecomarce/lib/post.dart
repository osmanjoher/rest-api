import 'package:flutter/material.dart';

class posts extends StatefulWidget {
  const posts({Key? key}) : super(key: key);

  @override
  _postsState createState() => _postsState();
}

class _postsState extends State<posts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Hero(
            tag: 'img1',
            child: Image.network('https://5.imimg.com/data5/TP/ST/MY-31253615/kids-formal-shirt-250x250.jpg',
              width: double.infinity,
            height: 300,),
          ),
          Text('Product details of Casual Cotton Shirt For Men. Long Sleeve. Code :DS-78'),

          Text(''' Product details of Casual Cotton Shirt For Men. Long Sleeve. Code :DS-78
Product Type: CASUAL SHIRT
Color: RED
Material: 100% COTTON
Comfortable and Soft
High Quality Material
Fashionable and comfortable for summer
For an effortlessly trendy look   '''),
          Row(
            children: [
              Text('৳ 500',style: TextStyle(
                fontSize: 40,
                color: Colors.red
              ),),
              Spacer(),
              RaisedButton(onPressed: (){},color: Colors.red ,child: Text('Buy Now'),)
            ],
          )

        ],
      ),
    );
  }
}
