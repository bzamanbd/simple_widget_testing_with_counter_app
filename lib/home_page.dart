import 'package:flutter/material.dart';
import 'package:widget_testing/counter_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final CounterController _data = CounterController();
  void _incrementCounter() {
    setState(() {
      _data.increment();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Counter App',
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          _data.count.toString(),
          style: ThemeData().textTheme.bodyLarge!.copyWith(fontSize: 50),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () => _incrementCounter(),
      ),
    );
  }
}
