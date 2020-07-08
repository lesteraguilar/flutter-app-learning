import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text('Avatar Page'),
      actions: <Widget>[

        Container(
          padding: EdgeInsets.all(1.0),
          child: CircleAvatar(
          backgroundImage: NetworkImage("https://i1.wp.com/www.universomarvel.com/wp-content/uploads/2014/12/stan-lee-.jpg"),
          radius: 25.0,
          )
        ),
        
        // Container(
        //   margin: EdgeInsets.only(right: 10.0),
        //   child: CircleAvatar(
            
        //     child: Text("SL"),
        //     backgroundColor: Colors.green,

            
        //   ),
        // ),
      ],
      ),
      body: Center(
        child: FadeInImage(
          image: NetworkImage("https://i1.wp.com/www.universomarvel.com/wp-content/uploads/2014/12/stan-lee-.jpg"),
          placeholder: AssetImage("assets/original.gif"),
          fadeInDuration: Duration(milliseconds: 200),
        ),
      )
    );
  }
}