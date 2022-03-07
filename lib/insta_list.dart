import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:first_app/insta_stories.dart';

import 'EditProfile.dart';
import 'Login.dart';



// CollectionReference users = FirebaseFirestore.instance.collection('users');
// DocumentSnapshot ds= await users.doc (email).get();
String instalistusername="";

List b =["",instalistusername, "Shawn", "PikiChops", "Taylor", "Jeon"];
List c =["","Cojímar,Cuba", "Ontario,Canada", "Mumbai,India", "Pennsylvania, United States", "Ontario, Canada"];
List d =["","https://images.wallpapersden.com/image/download/camila-cabello-as-cinderella_bG1qZmiUmZqaraWkpJRobWllrWdma2U.jpg",
  "https://wallpaperaccess.com/full/2240943.jpg",
  "https://wallpaperaccess.com/full/1136821.jpg",
  "https://mymodernmet.com/wp/wp-content/uploads/archive/zvY94dFUiqKwu1PMVsw5_thatnordicguyredo.jpg",
  "https://images.complex.com/complex/images/c_fill,dpr_auto,f_auto,q_auto,w_1400/fl_lossy,pg_1/ic7defqune831dh9orwm/memoji-2?fimg-client-default"];
List e = ["", "https://i.pinimg.com/originals/fd/c9/98/fdc9984f77e922212d62e0cd330b10c6.png",
  "http://images6.fanpop.com/image/photos/40900000/YourName-kimi-no-na-wa-40955557-1400-700.jpg",
  "https://theawesomeone.com/wp-content/uploads/2020/12/kiminonawa-scaled.jpg",
  "https://filmdaze.net/wp-content/uploads/2018/06/vlcsnap-2018-06-13-16h56m12s456.png",
  "https://cdn.theatlantic.com/thumbor/wwN1-QWO5L7VGpSouvrSMBw1y3I=/79x44:1843x1036/1600x900/media/img/mt/2017/04/your_name-1/original.jpg"
];
class InstaList extends StatefulWidget {


  @override
  _InstaListState createState() => _InstaListState();
}

class _InstaListState extends State<InstaList> {


  bool isPressed = false;
  // static final List b =["",instalistusername, "misshappy", "swee", "tan", "sid"];
  // print(b);

  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return ListView.builder(
      physics: ClampingScrollPhysics(),
      itemCount: 6,
      itemBuilder: (context, index) => index == 0
          ? new SizedBox(
        child: new InstaStories(),
        height: deviceSize.height * 0.2,
      )
          : Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(16.0, 16.0, 8.0, 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    new Container(
                      height: 40.0,
                      width: 40.0,
                      decoration: new BoxDecoration(
                        shape: BoxShape.circle,
                        image: new DecorationImage(
                            fit: BoxFit.fill,
                            image: new NetworkImage(
                                d[index])),
                        border: Border.all(
                          color: Colors.deepOrange,
                          width: 1.5,
                        ),
                      ),
                    ),
                    new SizedBox(
                      width: 10.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                    new Text(
                      b[index],
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    new Text(
                      c[index],
                      style: TextStyle(fontSize: 15),
                    ),
                    ],
                    ),
                  ],
                ),
                new IconButton(
                  icon: Icon(Icons.more_vert),
                  onPressed: null,
                )
              ],
            ),
          ),
          Flexible(
            fit: FlexFit.loose,
            child: new Image.network(
              e[index],
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new IconButton(
                      icon: new Icon(isPressed
                          ? Icons.favorite
                          : FontAwesomeIcons.heart),
                      color: isPressed ? Colors.red : Colors.black,
                      onPressed: () {
                        if(!isPressed) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                                duration: const Duration(seconds: 1),
                                content: const Text('You have liked the post')
                            ),
                          );
                        }
                        else{
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                                duration: const Duration(seconds: 1),
                                content: const Text('You have unliked the post')
                            ),
                          );
                        }
                        setState(() {
                          isPressed = !isPressed;
                        });
                      },
                    ),
                    new SizedBox(
                      width: 16.0,
                    ),
                    new Icon(
                      FontAwesomeIcons.comment,
                    ),
                    new SizedBox(
                      width: 16.0,
                    ),
                    new Icon(FontAwesomeIcons.paperPlane),
                  ],
                ),
                new Icon(FontAwesomeIcons.bookmark)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              "Liked by misshappy, swee and 528,331 others\nYOUR NAME....In the dreams U&I were switching places",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16.0, 16.0, 0.0, 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                new Container(
                  height: 40.0,
                  width: 40.0,
                  decoration: new BoxDecoration(
                    shape: BoxShape.circle,
                    image: new DecorationImage(
                        fit: BoxFit.fill,
                        image: new AssetImage(
                            "Assets/a.jpg")),
                  ),
                ),
                new SizedBox(
                  width: 10.0,
                ),
                Expanded(
                  child: new TextField(
                    decoration: new InputDecoration(
                      border: InputBorder.none,
                      hintText: "Add a comment...",
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child:
            Text("1 Day Ago", style: TextStyle(color: Colors.grey)),
          )
        ],
      ),
    );
  }
}
