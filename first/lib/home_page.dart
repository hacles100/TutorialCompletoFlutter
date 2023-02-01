
import 'package:first/app_controller.dart';
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
      body: Center(
        child: Switch(
          value: AppControler.instance.isDartTheme, 
          onChanged: ((value) {
           AppControler.instance.changeTheme();
        })),
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