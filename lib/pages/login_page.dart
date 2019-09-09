import 'package:flutter/material.dart';

import 'package:flutter_icons/flutter_icons.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _fondosuperio(),
          Positioned(
            top: 310.0,
            child: _fromLogin(context),
          ),
        ],
      ),
    );
  }

  Widget _fondosuperio() {
    final colorfondo = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(color: Colors.white),
    );
    final estiloTexto = TextStyle(color: Colors.white, fontSize: 40.0);

    final gradiente = Container(
      width: double.infinity,
      height: 400.0,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: FractionalOffset(0.0, 0.0),
              end: FractionalOffset(0.0, 1.0),
              colors: [
            Color.fromRGBO(1, 151, 247, 1.0),
            Color.fromRGBO(95, 184, 253, 1.0),
            Color.fromRGBO(1, 151, 247, 1.0),
            Color.fromRGBO(1, 151, 247, 1.0),
          ])),
    );

    return Stack(
      
      children: <Widget>[
        colorfondo, 
        gradiente, 
        _textosImagen(),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 50, horizontal: 140),
          child: Text('Login', style: estiloTexto),
        ),
        ],
    );
  }

  Widget _textosImagen() {   

    return SafeArea(
      child: Column(
        children: <Widget>[
          SizedBox(height: 40.0),         
          _imagen()
        ],
      ),
    );
  }

  Widget _imagen() {
    return Container(
      width: double.infinity,
      height: 250.0,
      child: Image(
        image: AssetImage('assets/19-01.png'),
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _fromLogin(context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(62), 
            topRight: Radius.circular(62)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(45.0),
        child: Column(
          children: <Widget>[
            _texField('Email'),
            SizedBox(height: 18.0),
            _texField('Password'),
            SizedBox(height: 22.0),
            _botonLogin(context),
            SizedBox(height: 25.0),
            Text('Olvidó su contraseña?',style: TextStyle(fontSize: 20.0),)
          ],
        ),
      ),
    );
  }

  Widget _texField(String texto) {
    return TextFormField(
      decoration: new InputDecoration(
        labelText: texto,
        fillColor: Colors.white,
        border: new OutlineInputBorder(
          borderRadius: new BorderRadius.circular(30.0),
          borderSide: new BorderSide(),
        ),
      ),
      validator: (val) {
        if (val.length == 0) {
          return "Email cannot be empty";
        } else {
          return null;
        }
      },
      keyboardType: TextInputType.emailAddress,
      style: new TextStyle(
        fontFamily: "Poppins",
      ),
    );
  }

  Widget _botonLogin(context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: <Widget>[
          Container(
            width: 300,
            height: 60,
            decoration: BoxDecoration(
              color: Colors.blueAccent,
              borderRadius: BorderRadius.all(
                Radius.circular(30.0),
              ),
            ),
            child: Center(
              child: Text(
                "Entrar",
                style: TextStyle(color: Colors.white, fontSize: 22.0),
              ),
            ),
          ),
          SizedBox(height: 25.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              _botonesItemLogin('google',Colors.redAccent),
              _botonesItemLogin('facebook',Color.fromRGBO(56, 89, 152, 1.0))
            ],
          )
        ],
      ),
    );
  }
  //No estoy usandoc
  Widget _botonesItemLogin(String icon, Color color) {
    return RaisedButton.icon(
      icon: Icon(FontAwesome.getIconData(icon)),
      label: Text('  Sing in  ', style: TextStyle(fontSize: 16.0)),
      onPressed: (){},
      shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(25.0)),
      color: color,
      textColor: Colors.white,
    );
  }

  Widget _botonesItemLogin2(String icon, Color color){
    return  OutlineButton.icon(
          icon: Icon(FontAwesome.getIconData(icon)),
          label: Text('   Sing in   ', style: TextStyle(fontSize: 16.0,color: Colors.black87)),
          onPressed: () {},
          shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(25.0)), //callback when button is clicked
          borderSide: BorderSide(
            color: color,             //Color of the border
            style: BorderStyle.solid, //Style of the border
            width: 1.0,            
             //width of the border
          ),
        );
  }
}
