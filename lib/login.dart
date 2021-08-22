import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _Login();
}

class _Login extends State<Login> {

  late String _emailField;
  late String _passwordField;

  final auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.black,
          onPressed: () {
            Navigator.pushNamed(context, '/Home');
          },
        ),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            SizedBox(
              width: 320,
              height: 70,
              child: Image(
                image: AssetImage('assets/instalogo.jpg'),
              ),
            ),
            SizedBox(
              height: 30,
            ),

            SizedBox(
              width:320,
              height: 40,
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
              width:320,
              height: 40,
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

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text(
                  'Forgot Password?      ',
                  style: TextStyle(
                    fontFamily: 'RobotoCondensedItalic',
                    color: Colors.blue,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              width: 320,
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.blue,
                ),
                onPressed: (){
                  auth.signInWithEmailAndPassword(email: _emailField,password: _passwordField );
                  Navigator.pushNamed(context,'/Main');
                },
                child: Text('Log In',
                    style: TextStyle(
                      color: Colors.white,
                    )),
              ),
            ),
            Row(
              children: [
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
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Center(
                  child: Row(
                    children: [
                      Text("                         Don't have an account? "),
                      new GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/SignUp');
                          },
                          child: new Text(
                            "Sign up.",
                            style: TextStyle(
                              color: Colors.blue,
                            ),
                          )),
                    ],
                  ),
                ),
                SizedBox(
                  height: 130,
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
}

