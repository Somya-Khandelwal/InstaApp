import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'dart:core';

import 'package:untitled2/mainactual.dart';

class SignUp extends StatefulWidget {
  @override
  State<SignUp> createState() => _SignUp();
}
class _SignUp extends State<SignUp> {

  late String _emailField;
  late String _passwordField;

  final auth = FirebaseAuth.instance;
  bool? _success;
  String? _userEmail;


  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.black,
          onPressed: (){
            Navigator.pushNamed(context,'/Home');
          },
        ),
      ),
      body: Center(
        child: Column(
          children: <Widget> [
            SizedBox(
              width:320,
              height: 150,
              child: Image(
                image: AssetImage('assets/instalogo.jpg'),
              ),
            ),
            SizedBox(
              width:320,
              height: 30,
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Username',
                  contentPadding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),

                ),

              ),
            ),
            SizedBox(
              height: 5,
            ),
            SizedBox(
              width:320,
              height: 30,
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                  contentPadding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                ),
                onChanged: (value){
                  setState(() {
                    _passwordField = value.trim();

                  });
                },
              ),
            ),
            SizedBox(
              height: 5,
            ),
            SizedBox(
              width:320,
              height: 30,
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Confirm Password',
                  contentPadding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                ),

              ),
            ),
            SizedBox(
              height: 5,
            ),
            SizedBox(
              width:320,
              height: 30,
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email ID',
                  contentPadding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                ),
                onChanged: (value){
                  setState(() {
                    _emailField = value.trim();

                  });
                },


              ),
            ),
            SizedBox(
              height: 5,
            ),


            SizedBox(
              width: 320,
              child: TextButton(
                style: TextButton.styleFrom(

                  backgroundColor: Colors.blue,

                ),
                onPressed: () async{
                  await _register();
                  await Navigator.pushNamed(
                      context,'/Main');
                },
                child: Text('SignUp',
                    style: TextStyle(
                      color: Colors.white,
                    )
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Row(children: <Widget>[
              Expanded(
                child: new Container(
                    margin: const EdgeInsets.only(left: 10.0, right: 15.0),
                    child: Divider(
                      color: Colors.black,
                      height: 50,
                    )),
              ),

              Text("OR"),

              Expanded(
                child: new Container(
                    margin: const EdgeInsets.only(left: 15.0, right: 10.0),
                    child: Divider(
                      color: Colors.black,
                      height: 50,
                    )),
              ),
            ]),

            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:<Widget>[
                Center(
                  child: Row(
                    children: [
                      Text('                              Have an account? '
                      ),
                      new GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context,'/Login');
                          },
                          child: new Text("Log in.",
                            style: TextStyle(
                              color: Colors.blue,
                            ),
                          )
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 70,
                ),
                Center(
                  child: SizedBox(
                    child: Card(child: Text('Instagram OT Facebook')),

                  ),
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }
  Future<void> _register() async {
    final User? user = (await auth.createUserWithEmailAndPassword(
      email: _emailField,
      password: _passwordField,
    ))
        .user;
    if (user != null) {
      setState(() {
        _success = true;
        _userEmail = user.email;
      });
    }
  }


}