
import 'package:flutter/material.dart';

import 'focusnode.dart';

void main(){
  runApp(MyApp()
  );
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ya ALLAH',
        theme: ThemeData(
        primarySwatch: Colors.green,
       ),
      home: const MyFocusNode(title: 'CASIAN DEVELOPER\'S'),
    );
  }
}
