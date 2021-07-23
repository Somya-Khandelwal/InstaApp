
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';


void main() {
  runApp(
      MaterialApp(
    home: MyApp(),
    routes: {
      '/Login': (context)=>Login(),
      '/SignUp':(context)=>SignUp(),
      '/Main': (context)=>Main(),
      '/Home':(context)=>MyApp(),
    },
   )
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _Login();
}
class _Login extends State<Login> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
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
                height: 40,
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
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
                  onPressed: (){
                    Navigator.pushNamed(context,'/Main');
                  },
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

class SignUp extends StatefulWidget {




  @override
  State<SignUp> createState() => _SignUp();
}
class _SignUp extends State<SignUp> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController emailController = TextEditingController();

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
                onPressed: (){
                  Navigator.pushNamed(context,'/Main');
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
}

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
          children: [Icon(CupertinoIcons.tv,
            color: Colors.black,),
            SizedBox(width: 10,),
            Icon(Icons.send_outlined,
              color: Colors.black,),
          ],
        ),
       ],
      ),
        body: Column(
          children: <Widget> [
            SizedBox(
              height: 120,
              child: Container(
                child: ListView(
                  // This next line does the trick.
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
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
                      ],
                    ),
                    SizedBox(
                      width:10,
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
                    SizedBox(
                      width:10,
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
                    SizedBox(
                      width:10,
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
                    SizedBox(
                      width:10,
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


                  ],

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

    Column(
      children: [
        Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
        Container(
        height: 50,
        padding: EdgeInsets.fromLTRB(8, 5, 8, 5),
        width: double.infinity,
        child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
        Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
        Container(
        height: 40,
        width: 40,
        margin: const EdgeInsets.all(3),
        decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: NetworkImage('https://newevolutiondesigns.com/images/freebies/cool-wallpaper-6.jpg'),
          fit: BoxFit.fill,)),
        ),
        ]),
        SizedBox(
        width: 6,
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
        ],
        ),
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



      ],
    )




         /*   ListView(
                scrollDirection: Axis.vertical,
                children: <Widget>[Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(16.0, 16.0, 8.0, 16.0),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                height: 40.0,
                                width: 40.0,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                      image: NetworkImage('https://newevolutiondesigns.com/images/freebies/cool-wallpaper-6.jpg'),
                                      fit: BoxFit.fill,
                                    )
                                ),
                              ),
                              Text(
                                  '     im_pathak'
                              ),
                            ]
                        ),
                      ),
                      SizedBox(
                        child: Flexible(
                          fit: FlexFit.loose,
                          child: Image.network('https://newevolutiondesigns.com/images/freebies/cool-wallpaper-10.jpg',
                            fit: BoxFit.cover,),
                        ),
                      ),
//3
                      Padding(padding: const EdgeInsets.all(16.0),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Icon(
                                Icons.favorite_border,
                              ),
                              SizedBox(width: 10,),
                              Icon(
                                Icons.chat_bubble_outline,
                              ),
                              SizedBox(width: 10,),
                              Icon(
                                Icons.send,
                              ),
                            ]
                        ),
                      ),
                      Padding(padding: EdgeInsets.symmetric(horizontal: 16.0),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                height: 40.0,
                                width: 40.0,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                      image: NetworkImage('https://newevolutiondesigns.com/images/freebies/cool-wallpaper-6.jpg'),
                                      fit: BoxFit.fill,
                                    )
                                ),
                              ),
                              Text(
                                  '    Liked by pawankumar, preeti and 528 others'
                              ),
                            ]
                        ),
                      )

                    ]
                ),

                ] ),*/
          ]
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
}




