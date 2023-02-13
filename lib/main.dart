import 'package:favorito_app/sep%20list%20class.dart';
import 'package:favorito_app/theme%20data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Main Screen.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_)=> list()),
          ChangeNotifierProvider(create: (_)=> theme()),

        ],
    child: MaterialApp(
        home: Xtra_class(),
      ),

    );
  }
}

class Xtra_class extends StatefulWidget {
  const Xtra_class({Key? key}) : super(key: key);

  @override
  _Xtra_classState createState() => _Xtra_classState();
}

class _Xtra_classState extends State<Xtra_class> {
  @override
  Widget build(BuildContext context) {
    final providerr = Provider.of<theme>(context);
    return MaterialApp(
      theme: providerr.present_theme,
      home: Main_Screen(),
    );
  }
}

