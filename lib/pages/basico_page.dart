import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:desing/widget/tabs.dart';



class BasicoPage extends StatelessWidget {
  final estiloTitulo = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final estiloSubTitulo = TextStyle(fontSize: 18.0, color: Colors.black38);
  
  
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _crearImagen(),
            _crearTitulo(),
            _acciones(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
          ],
        ),
      ),
      bottomNavigationBar: Tabs(),
    );
  }

  Widget _crearImagen() {
    return Container(
      width: double.infinity,
      child: Image(
        image: NetworkImage(
            'http://www.spsoriano.com/wp-content/uploads/2015/04/Productos-frescos.jpg'),
        height: 200.0,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _crearTitulo() {
    return SafeArea(
        child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Verduras Frescas", style: estiloTitulo),
                  SizedBox(height: 7.0),
                  Text("Del Campo a su meza", style: estiloSubTitulo)
                ],
              ),
            ),
            Icon(Icons.star, color: Colors.red, size: 30.0),
            Text('41', style: TextStyle(fontSize: 20.0))
          ],
        ),
      ),
    );
  }

  Widget _acciones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _accion(Icons.call, 'Telefono'),
        _accion(Icons.near_me, 'Ruta'),
        _accion(Icons.share, 'Compartir'),
      ],
    );
  }

  Widget _accion(IconData icon, String texto) {
    return Column(
      children: <Widget>[
        Icon(
          icon,
          color: Colors.blue,
          size: 40.0,
        ),
        SizedBox(height: 5.0),
        Text(texto, style: TextStyle(fontSize: 15.0, color: Colors.blue))
      ],
    );
  }

  Widget _crearTexto() {
    return SafeArea(
          child: Container(
          padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 0.0),
          child: Text(
              'Lorem quProident enim ut magna et adipisicing eiusmod quis adipisicing consectetur cupidatat.i amet veniam proident sit quis irure velit eu. Lorem quProident enim ut magna et adipisicing eiusmod quis adipisicing consectetur cupidatat.i amet veniam proident sit quis irure velit eu.',
              textAlign: TextAlign.justify,)),
    );
  }

  
}


