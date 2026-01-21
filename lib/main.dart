import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: CounterApp());
  }
}

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int count = 0;

  void increment() {
    setState(() {
      count++;
    });
  }

  void reset() {
    setState(() {
      count = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("counter App", style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),

      body: Center(
        child: Container(
          height: 200,
          width: 300,
          decoration: BoxDecoration(
            color: Colors.tealAccent,
            border: Border.all(color: Colors.red, width: 2),
            borderRadius: BorderRadius.all(Radius.circular(15)),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CounterDisplay(count: count),
              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FloatingActionButton(
                    backgroundColor: Colors.teal,
                    onPressed: increment,
                    child: const Icon(Icons.add, size: 32, color: Colors.white),
                  ),
                  const SizedBox(width: 20),
                  FloatingActionButton(
                    backgroundColor: Colors.teal,
                    onPressed: reset,
                    child: const Icon(
                      Icons.refresh,
                      size: 32,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CounterDisplay extends StatelessWidget {
  final int count;

  const CounterDisplay({super.key, required this.count});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Your Count: $count",
      style: TextStyle(
        fontSize: 36,
        fontWeight: FontWeight.bold,
        color: Colors.teal,
      ),
    );
  }
}
