import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';


class Login extends StatefulWidget {
  @override
  State<Login> createState() => _Login();
}
class _Login extends State<Login> {
  /*TextEditingController _emailField = TextEditingController();
  TextEditingController _passwordField = TextEditingController();*/
  final formKey = new GlobalKey<FormState>();
  late String _emailField;
  late String _passwordField;

  bool validateAndSave(){
    final form = formKey.currentState;
    if(form!.validate()){
      form.save();
      //print('Valid. Email: $_emailField, password: $_passwordField');}
    return true;}
    return false;
    /*  else{
      print('Invalid. Email: $_emailField, password: $_passwordField');
    }*/
    }
  void validateAndSubmit()async{
    if(validateAndSave()){
      try{
      final UserCredential user = await FirebaseAuth.instance.signInWithEmailAndPassword(email: _emailField, password: _passwordField);
      print('Signed in: ${user.uid}');
    }
    catch(e){
      print('Error: $e');
    }
    }
  }


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
          children: [
            SizedBox(
              height: 50,
            ),
            SizedBox(
              width:320,
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
              child: TextFormField(
                //controller: _emailField,
                validator: (value) => value!.isEmpty ? "Email can't be empty":null,
                onSaved: (value) => _emailField = value!,
                obscureText: true,
                decoration: InputDecoration(
                  hintText:'something@email.com',
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
              height: 40,
              child: TextFormField(
               // controller: _passwordField,
                validator: (value) => value!.isEmpty ? "Password can't be empty":null,
                onSaved: (value) => _passwordField = value!,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'enter 8 digit password',

                  border: OutlineInputBorder(),
                  labelText: 'Password',
                  contentPadding: EdgeInsets.symmetric(vertical: 10,horizontal:20),
                ),

              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children:<Widget>[
                Text('Forgot Password?      ',
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
              child:
              TextButton(
                style: TextButton.styleFrom(

                  backgroundColor: Colors.blue,

                ),
                onPressed: validateAndSubmit,/*(){
                  Navigator.pushNamed(context,'/Main');
                },*/
                child: Text('Log In',
                    style: TextStyle(
                      color: Colors.white,
                    )
                ),
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
              children:<Widget>[
                Center(
                  child: Row(
                    children: [
                      Text("                         Don't have an account? "
                      ),
                      new GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context,'/SignUp');
                          },
                          child: new Text("Sign up.",
                            style: TextStyle(
                              color: Colors.blue,
                            ),
                          )
                      ),
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