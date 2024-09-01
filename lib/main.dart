import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: const Text(
          "Ask Me Anything",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: EightBallPage(),
    ),
  ));
}

class EightBallPage extends StatefulWidget {
  const EightBallPage({super.key});

  @override
  State<EightBallPage> createState() => _EightBallPageState();
}

class _EightBallPageState extends State<EightBallPage> {
  int randNumber = 2;

  void randomizer() {
    setState(() {
      randNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(
            child: TextButton(
              onPressed: randomizer,
              child: Image.asset('images/ball$randNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
