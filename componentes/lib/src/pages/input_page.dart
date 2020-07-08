import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  String _nombre = '';
  String _email = '';
  String _fecha = '';
  List<String> _poderes = ['Volar', 'Rayos x', 'Super aliento', 'Super fuerza'];
  String _selectedOption;

  TextEditingController _dateController = new TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: Text('Input')
       ),
       body: ListView(
         padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
         children: <Widget>[
           _crearInput(),
           Divider(),
           _crearEmail(),
           Divider(),
           _crearPassword(),
           Divider(),
           _crearDate(context),
           Divider(),
           _crearDropDown(),
           Divider(),
           _crearPersona(),
           
         ],
       ),
    );
  }

  Widget _crearInput(){

    return TextField(
      //autofocus: true,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        counter: Text('Letras ${ _nombre.length}'),
        hintText: 'Nombre de la persona',
        labelText: 'Nombre',
        helperText: 'Sólo es el nombre',
        suffixIcon: Icon(Icons.accessibility),
        // icon: Icon(Icons.account_circle)
      ),
      onChanged: (valor){
        setState(() => _nombre = valor);
      
        
      },
    );
  }

  List<DropdownMenuItem<String>> getOptionDrop(){

    List<DropdownMenuItem<String>> lista = new List();

    _poderes.forEach((poder) { 
      lista.add(DropdownMenuItem(
        child: Text(poder),
        value: poder,
      )
      );
    });

    return lista;
  }

  Widget _crearDropDown(){
    return Row(
      children: <Widget>[
        Icon(Icons.select_all),
        SizedBox(width: 20.0),
        Expanded(
          child: DropdownButton(
            isExpanded: true,
            dropdownColor: Colors.green,
            underline: Container(),
            hint: Text('Seleccionar opción'),
            
            items: getOptionDrop(),
            value: _selectedOption,
            onChanged: (opt){
              setState(() {
                _selectedOption = opt;
                
              });
              print(opt);
            }
          ),
        )
        
      ],
    );
    
    
  }

  _trailing(_selectedOption){
    if(_selectedOption != null){
      return Text(_selectedOption);
    }else{
      return Text('');
    }
  }

  Widget _crearPersona(){
    return ListTile(
      title: Text('El Nombre es: $_nombre'),
      subtitle: Text('El Email es: $_email'),
      trailing: _trailing(_selectedOption),
    );

  }

  Widget _crearEmail(){
    return TextField(
      //autofocus: true,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        hintText: 'Email',
        labelText: 'Email',
        helperText: 'Sólo es el nombre',
        suffixIcon: Icon(Icons.alternate_email),
        // icon: Icon(Icons.account_circle)
      ),
      onChanged: (valor){
        setState(() => _email = valor);
      
        
      },
    );
  }

  Widget _crearPassword(){
    return TextField(
      //autofocus: true,
      obscureText: true,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        hintText: 'Password',
        labelText: 'Password',
        suffixIcon: Icon(Icons.lock),
        // icon: Icon(Icons.account_circle)
      ),
    );
  }

  Widget _crearDate(BuildContext context){
    return TextField(
      //autofocus: true,
      controller: _dateController,
      enableInteractiveSelection: false,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        hintText: 'Fecha de nacimiento',
        labelText: 'Fecha de nacimiento',
        suffixIcon: Icon(Icons.perm_contact_calendar),
        // icon: Icon(Icons.account_circle)
      ),
      onTap: (){
        FocusScope.of(context).requestFocus(new FocusNode());
        _selectDate(context);
      },
    );
  }

  _selectDate(BuildContext context) async{

    DateTime picked = await showDatePicker(
      context: context, 
      locale: Locale('es'),
      initialDate: new DateTime.now(),
      firstDate: new DateTime(2018),
      lastDate: new DateTime(2025)
    );

    if(picked != null){
      setState(() {
        _fecha = picked.toString();
        _dateController.text = _fecha;
      });
    }

  }

  
}