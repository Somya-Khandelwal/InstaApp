
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
 import 'package:firebase_core/firebase_core.dart';
import 'package:untitled2/login.dart';
import 'package:untitled2/mainactual.dart';
import 'package:untitled2/signup.dart';


Future<void> main() async{
WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
 final MyApp myApp = MyApp(
  initialRoute: '/Home',
);
  runApp(MyApp(initialRoute: '/Home',));}


class MyApp extends StatelessWidget {
  final String initialRoute;

  MyApp({required this.initialRoute});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(


        initialRoute: '/Home',
        routes: {
          '/Login': (context)=>Login(),
          '/SignUp':(context)=>SignUp(),
          '/Main': (context)=>Main(),
        },

        home: Scaffold(
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Center(
                  child: SizedBox(
                    width:300,
                    height: 400,

                    child: Image(
                      image: AssetImage('assets/instalogo.jpg'),
                    ),
                  ),
                ),

                SizedBox(
                  width: 320,


                  child: TextButton(
                    style: TextButton.styleFrom(

                      backgroundColor: Colors.blue,

                    ),
                    onPressed: (){
                      Navigator.pushNamed(context,'/Login');
                    },
                    child: Text('Log In',
                      style: TextStyle(
                        color: Colors.white,
                      )
                    ),
                  ),

                ),
                SizedBox(
                  height: 40,
                ),
                SizedBox(
                  width: 320,
                  child: OutlinedButton(
                    onPressed: (){
                      Navigator.pushNamed(context,'/SignUp');
                    },
                    child: Text('Sign Up'),

                  ),
                ),
                SizedBox(
                  height: 50,
                ),


              ],


          ),
        )
    );
  }
}








