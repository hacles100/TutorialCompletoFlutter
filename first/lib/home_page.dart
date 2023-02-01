
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Page'),
      ),
      body:  Center(
        child: GestureDetector(
        child: Text(
          'Contador: $counter',
          style: const TextStyle(
            fontSize: 40,
          ),
          ),
          onTap: () {
            setState(() {
               counter++;
            });
            print('$counter');
          },
         ),
       ),
       floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
        setState(() {
               counter++;
            });
         print('$counter');
      },),
    );
  }
}