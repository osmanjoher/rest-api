import 'package:ecomarce/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SingUp extends StatefulWidget {
  const SingUp({Key? key}) : super(key: key);

  @override
  _SingUpState createState() => _SingUpState();
}

class _SingUpState extends State<SingUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  TextFormField(

                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person),
                        labelText: 'Username',
                        hintText: 'Write username '
                    ),
                  ),
                  TextFormField(

                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.email),
                        labelText: 'E-MAil',
                        hintText: 'Write Email'
                    ),
                  ),
                  TextFormField(

                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.remove_red_eye),
                        labelText: 'Password',
                        hintText: 'Write password'
                    ),
                  ),
                  TextFormField(

                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.phone),
                        labelText: 'Phone Number',
                        hintText: 'Write Number'
                    ),
                  ),
                  DropdownButton(
                    hint: Text('Select Your Gender'),
                    items: [
                      DropdownMenuItem(child: Text('male'),
                      value: 'male',),
                      DropdownMenuItem(child: Text('Female'),
                      value: 'female',)
                    ], onChanged: (value){
                    setState(() {

                    });
                  },),
                   RaisedButton(onPressed: (){
                     Navigator.push(context, MaterialPageRoute(builder: (context)=>login()));
                   },
                   child: Text('Sign Up'),)


                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
