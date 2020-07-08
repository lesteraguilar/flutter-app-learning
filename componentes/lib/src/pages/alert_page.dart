import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text('Alert Page'),
      ),
      body: Center(
        child: RaisedButton(child: Text('Comprar sonidos'),
        color: Colors.black87,
        shape: StadiumBorder(),
        textColor: Colors.white,
        onPressed: () =>  _showAlert(context)
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: Text("Volver"),
        backgroundColor: Colors.black87,
        icon: Icon(Icons.keyboard_return),
        onPressed: (){
          Navigator.pop(context);
        },
      ),
    );
  }

  void _showAlert(BuildContext context){
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          title: Text('¿Quieres comprar la app?'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
            Text('Comprar la app habilitará todos los sonidos disponibles.'),
            // FlutterLogo(size: 50.0),
            ],
          ),
          actions: <Widget>[
            FlatButton(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
              color: Colors.black87,
              onPressed: () => Navigator.of(context).pop(), 
              child: Text('Si', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0)),
              textColor: Colors.green,
            ),
            FlatButton(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
              color: Colors.black87,
              onPressed: () => Navigator.of(context).pop(), 
              child: Text('No', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0)),
              textColor: Colors.red,
            ),
          ],
        );
      }
    );
  }
}