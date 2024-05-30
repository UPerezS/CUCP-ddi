import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('$clickCounter', style: const TextStyle(
                fontSize: 100,
                fontWeight: FontWeight.w100)  
              ),
              Text(clickCounter > 1 ? 'Cantidad de Clicks' : 'Click')
            ],
          )
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              clickCounter ++;
            });
          },
          child: const Icon(Icons.plus_one),
        ),
    );
  }
}

