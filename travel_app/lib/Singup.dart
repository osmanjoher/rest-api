import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class Singupp extends StatefulWidget {
  const Singupp({Key? key}) : super(key: key);

  @override
  _SinguppState createState() => _SinguppState();
}

class _SinguppState extends State<Singupp> {

  final _formkey = GlobalKey<FormState>();

  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var phoneController = TextEditingController();

  final databaseref = FirebaseDatabase.instance.reference().child('user reg');


  handleSignUp(){

    if(_formkey.currentState!.validate()){

      databaseref.push().set({

        "name" : nameController.text,
        "email" : emailController.text,
        "password" : passwordController.text,
        "phone" : phoneController.text,
      }).then((_){
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text('Succesfull') ));
        nameController.clear();
        emailController.clear();
        passwordController.clear();
        phoneController.clear();
      } ).catchError((onError){
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text('failed') ));
      });
    }
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade700,
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Form(
            key: _formkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Create A New Account",
                  style: TextStyle(
                    color: Colors.white70,
                      fontSize: 30,
                      fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(height: 40,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      TextFormField(
                        controller: nameController,
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.person),
                            labelText: 'Username',
                            hintText: 'Write username '
                        ),
                      ),
                      TextFormField(
                        controller: emailController,

                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.email),
                            labelText: 'E-MAil',
                            hintText: 'Write Email'
                        ),
                      ),
                      TextFormField(
                        controller: passwordController,

                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.remove_red_eye),
                            labelText: 'Password',
                            hintText: 'Write password'
                        ),
                      ),
                      TextFormField(
                        controller: phoneController,

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
                        handleSignUp();
                        Navigator.pop(context);
                      },
                        child: Text('Sign Up'),)


                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
