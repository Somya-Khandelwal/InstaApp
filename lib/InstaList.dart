import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class InstaList extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context,index)=> index= 0 ? SizedBox(
        child: InstaStories(
        ),
      )

    );

  }
  }

