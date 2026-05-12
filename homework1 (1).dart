import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Home()));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int num = 0;
  void _decrement() {
    if (num == 0) {
      return;
    }
    setState(() {
      num--;
    });
  }

  void _increment() {
    setState(() {
      num++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            FloatingActionButton(onPressed: _decrement, child: Text('Click')),
            Text('$num'),
            FloatingActionButton(onPressed: _increment, child: Text('Click')),
          ],
        ),
      ),
    );
  }
}
