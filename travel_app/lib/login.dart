import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:lottie/lottie.dart';
import 'package:travel_app/Singup.dart';
import 'package:travel_app/forgot.dart';
import 'package:travel_app/home.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {

  bool foool = true;


  Future<UserCredential> signInWithGoogle() async {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );



    // Once signed in, return the UserCredential
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      body:  SafeArea(
        child: Column(
          children: [
            SizedBox(height: 150,),

            Column(
              children: [
                Lottie.asset("assets/tore.json"),
                FlatButton(onPressed: () async {

                  await signInWithGoogle();
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>home()));
                  });

                }, child:Row(
                  children: [
                    Image.asset("assets/google.png",width: 80,height: 80,),
                    Text('Google Log In',style: TextStyle(
                      color: Colors.white,
                      fontSize: 20
                    ),)
                  ],
                ) ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
