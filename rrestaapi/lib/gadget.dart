import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:http/http.dart' as http;

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {

  var temp;
  var description;
  var curently;
  var humidity;
  var windSpeed;

  Future getWeather () async{
    Uri url = Uri.https('api.openweathermap.org', '/data/2.5/weather?q=dhaka&appid=9121d8e7b38a8c365ae4e0a3ce00a316');
    http.Response response = await http.get(url);
    var result = jsonDecode(response.body);
    setState(() {
      this.temp = result['temp'];
      this.description = result['weather'][0]['descritption'];
      this.curently = result['weather'][0]['main'];
      this.humidity = result['main']['humidity'];
      this.windSpeed = result['wind']['speed'];
    });
  }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this.getWeather();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Gedget'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
          color: Colors.blueGrey,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height/4,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                    temp != null ? temp.toString() + "\u00B0" :"loading",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white
                ),),
                Text(
                    curently != null? curently.toString() :"loading")
              ],
            ),

          ),
          Container(
            color: Colors.green,
            width: double.infinity,
            height: 60,
            child: Row(
              children: [
                Image.asset('assets/map.png',width: 50,height: 50,),
                FlatButton(onPressed: (){}, child: Text('check Yor location',style: TextStyle(
                  color: Colors.redAccent,
                  fontSize: 30,
                ),))
              ],
            ),

          ),
          Expanded(child:
          Padding(
              padding: EdgeInsets.all(20.00),
          child: ListView(
            children: [
              ListTile(
                leading: FaIcon(FontAwesomeIcons.thermometerHalf),
                title: Text('Temporar'),
                trailing: Text(temp != null ? temp.toString() + "\u00B0" :"loading"),
              ),
              ListTile(
                leading: FaIcon(FontAwesomeIcons.cloud),
                title: Text('weather'),
                trailing: Text(description != null ? description.toString() :"loading"),
              ),
              ListTile(
                leading: FaIcon(FontAwesomeIcons.sun),
                title: Text('Temperhumidituy'),
                trailing: Text(humidity != null ? humidity.toString() :"loading"),
              ),
              ListTile(
                leading: FaIcon(FontAwesomeIcons.wind),
                title: Text('wind speed'),
                trailing: Text(windSpeed != null ? windSpeed.toString() : "loading"),
              ),
            ],
          ),))
        ],
      ),
    );
  }
}
