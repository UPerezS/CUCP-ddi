import 'package:flutter/material.dart';

class CounterFunctionScreen extends StatefulWidget{
  const CounterFunctionScreen({super.key});

  @override
  State<CounterFunctionScreen> createState() => _CounterFunctionScreenState();
}

class _CounterFunctionScreenState extends State<CounterFunctionScreen> {

  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Functions'),
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {},
          ),
          backgroundColor: const Color.fromARGB(255, 41, 174, 241),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.person_2_sharp)
              ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_vert)
              )
          ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$clickCounter', style: const TextStyle(fontSize: 160, fontWeight: FontWeight.w100)),
            Text(clickCounter == 1 ? "Click" : "Clicks", style: TextStyle(fontSize: 25))
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const SizedBox(height: 10),
          CustomButton(
            icon: Icons.refresh_outlined,
            onPressed: () {
              clickCounter = 0;
              setState(() {
                
              });
            },
          ),
          const SizedBox(height: 10),
          CustomButton(
            icon: Icons.plus_one_outlined,
            onPressed: () {
              clickCounter++;
              setState(() {
                
              });
            },
          ),
          const SizedBox(height: 10),
          CustomButton(
            icon: Icons.exposure_minus_1_outlined,
            onPressed: () {
              if(clickCounter <= 0) return;
              clickCounter--;
              setState(() {
                
              });
            },
          ),
        ]
      )
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;
  const CustomButton({
    super.key,
    required this.icon,
    required this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      enableFeedback: true,
      elevation: 5,
        onPressed: onPressed,
      child: Icon(icon),
    );
  }
}