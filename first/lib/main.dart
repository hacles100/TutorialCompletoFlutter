

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
      home:const HomePage(),
    );
  }
}


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
       child: Center(
        child: GestureDetector(
        child: Text(
          'Contador: $counter',
          ),
          onTap: () {
            setState(() {
               counter++;
            });
            print('$counter');
          },
         ),
       ),
    );
  }
}