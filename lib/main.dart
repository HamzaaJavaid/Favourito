import 'package:favorito_app/sep%20list%20class.dart';
import 'package:favorito_app/theme%20data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Main Screen.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => list()),
        ChangeNotifierProvider(create: (_) => theme()),
      ],
      builder: (context, child) {
        return MaterialApp(
          theme: context.watch<theme>().present_theme,
          home: const Main_Screen(),
        );
      },
    );
  }
}
