
import 'package:first/app_controller.dart';
import 'package:first/home_page.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppControler.instance,
      builder: (context, child){
      return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: AppControler.instance.isDartTheme ? Brightness.dark : Brightness.light,
      ),
      home:const HomePage(),
    );
    }
    );
  }
}
