import 'package:expandable_widgets/expandable_widgets.dart';
import 'package:flutter/material.dart';

class tickett extends StatefulWidget {
  const tickett({Key? key}) : super(key: key);

  @override
  _tickettState createState() => _tickettState();
}

class _tickettState extends State<tickett> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Ticket"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Column(
                children: [
                  Image.asset("assets/imb.png"),
                  Expandable(
                    primaryWidget:
                    Container(
                      height: 80,
                      decoration: BoxDecoration(

                      ),
                      child: Center(child: Text('Green line',
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold
                        ),
                      )),
                    ),
                    secondaryWidget: Container(
                      height: 80,
                      child: Center(
                        child: Column(
                          children: [
                            Text("cox's bazar"),
                            Text('Start time 9:00 AM'),
                            RaisedButton(onPressed: (){},child: Text("Confirm"),color: Colors.black12,)
                          ],
                        ),
                      ),
                    ),
                    backgroundColor: Colors.green,
                    showArrowIcon: true,
                    centralizePrimaryWidget: true,
                    isClickable: true,
                    padding: EdgeInsets.all(1.0),
                  ),
                  SizedBox(height: 30,),
                  Expandable(
                    primaryWidget:
                    Container(
                      height: 80,
                      decoration: BoxDecoration(

                      ),
                      child: Center(child: Text('S ALAM',
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold
                        ),
                      )),
                    ),
                    secondaryWidget: Container(
                      height: 80,
                      child: Center(
                        child: Column(
                          children: [
                            Text("cox's bazar"),
                            Text('Start time 9:00 AM'),
                            RaisedButton(onPressed: (){},child: Text("Confirm"),color: Colors.black12,)
                          ],
                        ),
                      ),
                    ),
                    backgroundColor: Colors.green,
                    showArrowIcon: true,
                    centralizePrimaryWidget: true,
                    isClickable: true,
                    padding: EdgeInsets.all(1.0),
                  ),
                  SizedBox(height: 30,),
                  Expandable(
                    primaryWidget:
                    Container(
                      height: 80,
                      decoration: BoxDecoration(

                      ),
                      child: Center(child: Text('Saudia',
                        style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold
                      ),)),
                    ),
                    secondaryWidget: Container(
                      height: 80,
                      child: Center(
                        child: Column(
                          children: [
                            Text("cox's bazar"),
                            Text('Start time 9:00 AM'),
                            RaisedButton(onPressed: (){},child: Text("Confirm"),color: Colors.black12,)
                          ],
                        ),
                      ),
                    ),
                    backgroundColor: Colors.green,
                    showArrowIcon: true,
                    centralizePrimaryWidget: true,
                    isClickable: true,
                    padding: EdgeInsets.all(1.0),
                  ),
                  SizedBox(height: 30,),
                  Expandable(
                    primaryWidget:
                    Container(
                      height: 80,
                      decoration: BoxDecoration(

                      ),
                      child: Center(child: Text('Shamoli',
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold
                        ),
                      )),
                    ),
                    secondaryWidget: Container(
                      height: 80,
                      child: Center(
                        child: Column(
                          children: [
                            Text("cox's bazar"),
                            Text('Start time 9:00 AM'),
                            RaisedButton(onPressed: (){},child: Text("Confirm"),color: Colors.black12,)
                          ],
                        ),
                      ),
                    ),
                    backgroundColor: Colors.green,
                    showArrowIcon: true,
                    centralizePrimaryWidget: true,
                    isClickable: true,
                    padding: EdgeInsets.all(1.0),
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
