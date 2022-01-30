import 'package:ecomarce/SignUp.dart';
import 'package:ecomarce/forgot_password.dart';
import 'package:ecomarce/home.dart';
import 'package:flutter/material.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff6B0000),
      body: Column(
        children: [
          Image.asset('assets/tyu.png'),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  TextFormField(

                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email),
                        labelText: 'E-MAil',
                        hintText: 'Type Email'
                    ),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.remove_red_eye),
                        labelText: 'Password',
                        hintText: 'Type Password'
                    ),
                  ),
                  RaisedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>home()));
                  },child: Text('Log In',),color: Colors.white,),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>forgotss()));
                    },
                      child: Text('Forgot Password?',style: TextStyle(color: Colors.white),)),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>SingUp()));
                    },
                    child: Text('Sign UP',style: TextStyle(
                      color: Colors.white,
                      fontSize: 20
                    ),),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
