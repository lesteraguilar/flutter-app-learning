import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent[600],
        title: Text('Card Page'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: <Widget>[
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo2(),
        ],
      ),
    );
  }

  Widget _cardTipo2(){
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(35.0)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(35.0),
      
      // clipBehavior: Clip.antiAlias,
        child: Column(
          children: <Widget>[
            FadeInImage(
              image: NetworkImage('https://www.tom-archer.com/wp-content/uploads/2018/06/milford-sound-night-fine-art-photography-new-zealand.jpg'),
              placeholder: AssetImage('assets/original.gif'),
              fadeInDuration: Duration(milliseconds: 200),
              height: 240.0,
              fit: BoxFit.contain,
            ),
            // Image(
            //   image: NetworkImage('https://www.tom-archer.com/wp-content/uploads/2018/06/milford-sound-night-fine-art-photography-new-zealand.jpg'),
            // ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: Text('Esta es una imagen'),
            ),
          ], 
        ),
      ),
    );

    // return Container(
    //   decoration: BoxDecoration(
    //     borderRadius: BorderRadius.circular(30.0),
    //     boxShadow: <BoxShadow>[
    //       BoxShadow(
    //         color: Colors.white, 
    //         blurRadius: 30.0,
    //         spreadRadius: 20.0, 
    //         offset: Offset(2.0, -20.0),
    //       )
          
    //     ],
    //   ),
      
    // );
  }

  Widget _cardTipo1(){
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.photo_album, color: Colors.blue[600]),
            title: Text('soy el titulo'),
            subtitle: Text('soy el sub titulo xD'),
            // trailing: Icon(Icons.photo_camera, color: Colors.pink[600]),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                color: Colors.green[600],
                child: Text('Si'),
                onPressed: (){},
              ),
              FlatButton(
                color: Colors.red[600],
                child: Text('No'),
                onPressed: (){},
              ),
            ],
          )
        ],
      ),
    );
  }
}



