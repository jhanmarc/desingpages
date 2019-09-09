import 'package:desing/pages/basico_page.dart';
import 'package:desing/pages/botones_page.dart';
import 'package:desing/pages/login_page.dart';
import 'package:desing/pages/scroll_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //cambiar barra de hora y notificaiones
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Colors.black,
      
    ));


    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Diseño',
      initialRoute: 'login',
      
      routes: {
        'basico' : (BuildContext context) => BasicoPage(),
        'scroll' : (BuildContext context) => ScrollPage(),
        'botones' : (BuildContext context) => BotonesPage(),
        'login' : (BuildContext context) => LoginPage(),
      },
    );
  }
}