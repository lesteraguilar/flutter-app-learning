import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  final options = ['1','2','3','4','5'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('hola wn'),
      ),
      body: ListView(
        children: _createShortList()
      ),
    );

  }

  // List<Widget> _createItems(){

  //   List<Widget> lista = new List<Widget>();

  //   for (String opt in options) {
  //     final tempWidget = ListTile(
  //       title: Text(opt),        
  //     );

  //   lista..add(tempWidget)
  //        ..add(Divider());
  //   }

  //   return lista;
  // }

  List<Widget> _createShortList(){

    return options.map((item){
        return Column(
          children: <Widget>[
            ListTile(
              subtitle: Text('jaja'),
              title: Text(item + '/'),
              leading: Icon(Icons.account_balance_wallet),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: (){},
              onLongPress: (){},
              
            ),
            Divider(),
            
          ],
        );
    }).toList();

  }

}
