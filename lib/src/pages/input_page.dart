import 'package:flutter/material.dart';


class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  String _nombre    = '';
  String _email     = '';
  String _fecha     = '';

  TextEditingController _inputFieldDateController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Titulo de input'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: 15.0,
          vertical: 20.0
        ),
        children: [
          _crearInput(),
          Divider(),
          _crearEmail(),
          Divider(),
          _crearPassword(),
          Divider(),
          _crearFecha(context),
          Divider(),
          _crearPersona(),
        ],
      ),
    );
  }

  Widget _crearInput() {
    return TextField(
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0)
        ),
        counter: Text('Letras ${ _nombre.length }'),
        hintText: 'Nombre de la persona',
        labelText: 'Nombre',
        helperText: 'Solo se permite nombre',
        suffixIcon: Icon(Icons.accessibility),
        icon: Icon(Icons.account_balance)
      ),
      onChanged: (valor){
        setState(() {
          _nombre = valor;
        });
      },

    );
  }

  Widget _crearPersona() {
    return ListTile(
      title: Text('Nombre es $_nombre'),
      subtitle: Text('Correo: $_email'),
    );
  }

  Widget _crearEmail() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0)
        ),
        hintText: 'Correo Electrónico',
        labelText: 'Email',
        suffixIcon: Icon(Icons.alternate_email),
        icon: Icon(Icons.email)
      ),
      onChanged: (valor){
        setState(() {
          _email = valor;
        });
      },

    );
  }

  Widget _crearPassword() {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0)
        ),
        hintText: 'password',
        labelText: 'Contraseña',
        suffixIcon: Icon(Icons.security),
        icon: Icon(Icons.settings_cell_outlined)
      ),
      onChanged: (valor){
        setState(() {
          _email = valor;
        });
      },
    );
  }

  Widget _crearFecha(BuildContext context) {
    return TextField(
      enableInteractiveSelection: false,
      controller: _inputFieldDateController,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0)
        ),
        hintText: 'Fecha de Nacimiento',
        labelText: 'Fecha de Nacimiento',
        suffixIcon: Icon(Icons.calendar_today),
        icon: Icon(Icons.calendar_today_outlined)
      ),
      onTap: (){
        FocusScope.of(context).requestFocus(new FocusNode());
        _selectDate(context);
      },
    );
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
      context: context, 
      initialDate: new DateTime.now(), 
      firstDate: new DateTime(2018), 
      lastDate: new DateTime(2021),
      locale: Locale('es', 'ES')
    );

    if ( picked != null ) {
      setState(() {
        _fecha = picked.toString();
        _inputFieldDateController.text = _fecha;
      });
    }
  }
}