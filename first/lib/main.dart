

import 'package:flutter/material.dart';

main(){
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red 
      ),
      home: Container(
        child:const Center(child: Text('Flutter')),
      ),
    );
  }
}