/*
* import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


class Main extends StatefulWidget {



  @override
  State<Main> createState() => _Main();
}

class _Main extends State<Main> {
  bool isPressed = false;
  bool ispressed = false;

  @override
  Widget build(BuildContext context){

    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(CupertinoIcons.camera,
          color: Colors.black,),
        title:  SizedBox(
          height: 50,
          child: Image(
            image: AssetImage('assets/instalogo.jpg'),
          ),
        ),
        actions: <Widget>[
          Row(
            children: [
              Icon(CupertinoIcons.tv,
              color: Colors.black,),
              SizedBox(width: 10,),

              IconButton(
                icon: Icon(Icons.send_outlined,
                    color: Colors.black),
                onPressed: () {
                  Navigator.pushNamed(context, '/dm');
                },
              ),
            ],

          ),
        ],
      ),
      body: Column(
          children: <Widget> [
       //Story

        SizedBox(
              height: 120,

                child: SingleChildScrollView(
                  // This next line does the trick.
                  scrollDirection: Axis.horizontal,

                      child: Row(
                        children:[
                          Column(
                              children: [
                                Container(
                                  width: 90,
                                  height: 100,

                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                          image: AssetImage('assets/birds.jpg'),
                                          fit: BoxFit.fill

                                      )
                                  ),

                                ),
                                Text('Your Story'),
                        ]
                          ),



                           Column(
                              children: [
                                Container(
                                  width: 90,
                                  height: 100,

                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                          image: NetworkImage('https://newevolutiondesigns.com/images/freebies/cool-wallpaper-1.jpg'),
                                          fit: BoxFit.fill
                                      )
                                  ),
                                ),
                                Text('jackjill'),
                              ],

                            ),
                          Column(
                              children: [
                                Container(
                                  width: 90,
                                  height: 100,

                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                          image: NetworkImage('https://newevolutiondesigns.com/images/freebies/cool-wallpaper-3.jpg'),
                                          fit: BoxFit.fill
                                      )
                                  ),
                                ),
                                Text('leone123'),
                              ],
                            ),
                          Column(
                              children: [
                                Container(
                                  width: 90,
                                  height: 100,

                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                          image: NetworkImage('https://newevolutiondesigns.com/images/freebies/cool-wallpaper-6.jpg'),
                                          fit: BoxFit.fill
                                      )
                                  ),
                                ),
                                Text('shergill'),
                              ],
                            ),
                          Column(
                              children: [
                                Container(
                                  width: 90,
                                  height: 100,

                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                        image: NetworkImage('https://newevolutiondesigns.com/images/freebies/cool-wallpaper-10.jpg'),
                                        fit: BoxFit.fill
                                    ),

                                  ),
                                ),
                                Text('iccha'),
                              ],
                            ),


                       ]
                    ),

                    ),



),






      Expanded(
    child: new Container(
    margin: const EdgeInsets.only(left: 10.0, right: 15.0),
    child: Divider(
    color: Colors.black,
    height: 50,
    )),
    ),

    //Post
    Container(
      child: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
            children: [
              Container(
                  width: 100.0,
                  height: 100.0,
                  decoration: new BoxDecoration(
                      shape: BoxShape.circle,
                      image: new DecorationImage(
                          fit: BoxFit.fill,
                          image: new NetworkImage(
                              "https://newevolutiondesigns.com/images/freebies/cool-wallpaper-15.jpg")
                      )
                  )
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('im_pathak',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                        letterSpacing: 1,)),
                  Text(
                    'Canada',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: Colors.black),
                  ),
                ],
              ),
              Flexible(
                fit: FlexFit.loose,
                child: Image.network('https://newevolutiondesigns.com/images/freebies/cool-wallpaper-10.jpg',
                  fit: BoxFit.cover,
                ),
              ),

              Padding(
                padding: EdgeInsets.fromLTRB(8, 2, 8, 2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        IconButton(
                          icon: Icon(
                              isPressed ? Icons.favorite : Icons.favorite),
                          color: isPressed ? Colors.red : Colors.black,
                          iconSize: 24,
                          onPressed: () {
                            setState(() {
                              isPressed = !isPressed;
                            });
                            if (isPressed == true) {
                              SnackBar mySnackbar = SnackBar(
                                content: Text(
                                  "You Have Liked the Post",
                                  style: TextStyle(color: Colors.blue, fontSize: 16),
                                  textAlign: TextAlign.center,
                                ),
                                width: 300.0,
                                backgroundColor: Colors.white,
                                duration: Duration(milliseconds: 2000),
                                padding: EdgeInsets.symmetric(horizontal: 8.0),
                                behavior: SnackBarBehavior.floating,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0)),
                              );
                              ScaffoldMessenger.of(context).showSnackBar(mySnackbar);
                            }
                          },
                        ),
                        Icon(Icons.comment, size: 24,),
                        SizedBox(
                          width: 8,
                        ),
                        Icon(Icons.send, size: 24,),
                      ],
                    ),
                    IconButton(
                      icon: Icon(
                          ispressed ? Icons.bookmark : Icons.bookmark),
                      color: Colors.black,
                      iconSize: 24,
                      onPressed: () {
                        setState(() {
                          ispressed = !ispressed;
                        });
                        if (ispressed == true) {
                          SnackBar mySnackbar = SnackBar(
                            content: Text(
                              "Saved to Collection",
                              style: TextStyle(color: Colors.blue, fontSize: 16),
                              textAlign: TextAlign.center,
                            ),
                            width: 300.0,
                            backgroundColor: Colors.white,
                            duration: Duration(milliseconds: 2000),
                            padding: EdgeInsets.symmetric(horizontal: 8.0),
                            behavior: SnackBarBehavior.floating,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0)),
                          );
                          ScaffoldMessenger.of(context).showSnackBar(mySnackbar);
                        }
                      },
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 2, 10, 1),
                child: Row(
                  children: [
                    Text(
                      "Liked by Sameer08, _raghav121 and 44,686 others",
                      style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
                      textAlign: TextAlign.start,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 2, 10, 2),
                child: Row(
                  children: [
                    Text(
                      'im_pathak',
                      textAlign: TextAlign.start,
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                    ),
                    SizedBox(
                      width: 8,
                    ),

                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 2, 10, 3),
                child: Row(
                  children: [
                    Text(
                      "1 Day Ago",
                      style: TextStyle(fontSize: 11, color: Colors.grey),
                    ),
                  ],
                ),
              )

            ],
          ),

      )
             ),
          ],
      ),


      bottomNavigationBar: new Container(
        color: Colors.white,
        height: 50.0,
        alignment: Alignment.center,
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              onPressed: (){ Navigator.pushNamed(context,'/Main');},
              icon: Icon(Icons.home,
                color: Colors.black,),
            ),
            IconButton(
              onPressed: (){ Navigator.pushNamed(context,'/Search');},
              icon: Icon(Icons.search,
                color: Colors.black,),
            ),
            IconButton(
              onPressed: (){ Navigator.pushNamed(context,'/Add');},
              icon: Icon(Icons.add_box_outlined,
                color: Colors.black,),
            ),
            IconButton(
              onPressed: (){ Navigator.pushNamed(context,'/Follow');},
              icon: Icon(Icons.favorite_border,
                color: Colors.black,),
            ),
            IconButton(
              onPressed: (){ Navigator.pushNamed(context,'/Profile');},
              icon: Icon(Icons.account_box,
                color: Colors.black,),
            ),
          ],
        ),
      ),

    );
  }
}*/


/*
* import 'dart:core';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _Login();
}
enum FormType{
  login,
  register
}

class _Login extends State<Login> {
  /*TextEditingController _emailField = TextEditingController();
  TextEditingController _passwordField = TextEditingController();*/
  final formKey = new GlobalKey<FormState>();
  late String _emailField;
  late String _passwordField;
  final auth = FirebaseAuth.instance;
  /* FormType _formType = FormType.login;

  bool validateAndSave() {
    final form = formKey.currentState;
    if (form!.validate()) {
      form.save();
      //print('Valid. Email: $_emailField, password: $_passwordField');}
      return true;
    }
    return false;
    /*  else{
      print('Invalid. Email: $_emailField, password: $_passwordField');
    }*/
  }

  void validateAndSubmit() async {
    if (validateAndSave()) {
      try {
        if(_formType == FormType.login)
        {final UserCredential user = await FirebaseAuth.instance
            .signInWithEmailAndPassword(
                email: _emailField, password: _passwordField);
        print('Signed in: ${user.user!.uid}');}else{
          final UserCredential user = await FirebaseAuth.instance
              .signInWithEmailAndPassword(
              email: _emailField, password: _passwordField);
          print('Registered user: ${user.user!.uid}');


        }
      } catch (e) {
        print('Error: $e');
      }
    }
    Navigator.pushNamed(context,'/Main');

  }
  void moveToRegister(){
    formKey.currentState!.reset();
    setState(){
      _formType = FormType.register;
    }
    Navigator.pushNamed(context, '/SignUp');
  }
  void moveToLogin(){
    formKey.currentState!.reset();
    setState(){
      _formType = FormType.login;
    }
    Navigator.pushNamed(context,'/Login');
  }*/

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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
             children:[
               Padding(
                 padding: const EdgeInsets.fromLTRB(16, 8, 30, 8),
                 child: Image(
                   image: AssetImage('assets/instalogo.jpg'),
                   height: 80,
                 ),
               ),
                SizedBox(height: 30,),
                new Form(
                  key: formKey,
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: buildInputs() + buildSubmitButton(),
                  ),

                ),

                   Padding(
                     padding: const EdgeInsets.fromLTRB(8, 80, 8, 0),

                       child:Card(child: Text('Instagram OT Facebook')),

                   )
             ],
           ),
         ),
      );

  }
  List<Widget> buildInputs() {
    return [

         new TextFormField(
          //controller: _emailField,
          validator: (value) =>
          value!.isEmpty ? "Email can't be empty" : null,
          onSaved: (value) => _emailField = value!,
          obscureText: true,
          decoration: InputDecoration(
            hintText: 'something@email.com',
            border: OutlineInputBorder(),
            labelText: 'Username or Email ID',
            contentPadding:
            EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          ),
        ),

      SizedBox(
        height: 5,
      ),

      TextFormField(
          // controller: _passwordField,
          validator: (value) =>
          value!.isEmpty ? "Password can't be empty" : null,
          onSaved: (value) => _passwordField = value!,
          obscureText: true,
          decoration: InputDecoration(
            hintText: 'enter 8 digit password',
            border: OutlineInputBorder(),
            labelText: 'Password',
            contentPadding:
            EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[

          Text(
            'Forgot Password?      ',
            style: TextStyle(
              fontFamily: 'RobotoCondensedItalic',
              color: Colors.blue,
            ),
          ),
          SizedBox(height: 50,)
        ],
      )
    ];
  }




  List <Widget> buildSubmitButton() {
    if (_formType == FormType.login) {
      return [
        new TextButton(
          style: TextButton.styleFrom(
            backgroundColor: Colors.blue,
          ),
          onPressed: validateAndSubmit,
          /*(){
                  Navigator.pushNamed(context,'/Main');
                },*/
          child: Text('Log In',
              style: TextStyle(
                color: Colors.white,
              )),
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
        Center(
          child: Row(
            children: [
              Text("                         Don't have an account? "),
              new GestureDetector(
                  onTap: moveToRegister, /*() {
                            Navigator.pushNamed(context, '/SignUp');
                          },*/
                  child: new Text(
                    "Sign up.",
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  )),
            ],
          ),

        ),


      ];
    }
    else{
      return [
      TextButton(
        style: TextButton.styleFrom(

          backgroundColor: Colors.blue,

        ),
        onPressed: validateAndSubmit,/* (){
          Navigator.pushNamed(context,'/Main');
        },*/
        child: Text('SignUp',
            style: TextStyle(
              color: Colors.white,
            )
        ),
      ),
      Center(
        child: Row(
          children: [
            Text('                              Have an account? '
            ),
            new GestureDetector(
                onTap: moveToLogin, /* (){
    Navigator.pushNamed(context,'/Login');
    },*/
                child: new Text("Log in.",
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                )
            ),
          ],
        ),
      ),
      ];

    }
  }
}*/