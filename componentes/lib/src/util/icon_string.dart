import 'package:flutter/material.dart';

final _icon = <String, Icon> {

  'add_alert' : Icon(Icons.add_alert, color: Colors.blue),
  'accessibility' : Icon(Icons.accessibility, color: Colors.red),
  'folder_open' : Icon(Icons.folder_open, color: Colors.green),
  'donut_large' : Icon(Icons.donut_large, color: Colors.purple),
  'input' : Icon(Icons.input, color: Colors.orange)

};

Icon getIcon( String nameIcon ){

  return _icon[nameIcon];

}