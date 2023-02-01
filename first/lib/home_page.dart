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
        actions: const [
          CustomSwicther(),
        ],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Contador: $counter'),
            const CustomSwicther(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          setState(() {
            counter++;
          });
        },
      ),
    );
  }
}

// Swicth Widget
class CustomSwicther extends StatelessWidget {
  const CustomSwicther({super.key});

  @override
  Widget build(BuildContext context) {
    return Switch(
        value: AppControler.instance.isDartTheme,
        onChanged: (value) {
          AppControler.instance.changeTheme();
        });
  }
}
