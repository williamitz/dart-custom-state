import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _counter = 0;

  void increase() {
    setState(() => _counter++);
  }

  void decrement() {
    if (_counter == 0) return;

    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter app'),
        actions: [
          IconButton(
            onPressed: () => setState(() => _counter = 0),
            icon: const Icon(Icons.settings_backup_restore),
            hoverColor: Colors.pinkAccent,
            tooltip: 'reset counter',
          )
        ],
      ),
      body: Center(
        child: Column(
          // alineacion vertical
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            const Text('Mi primer app en flutter'),
            const SizedBox(height: 20),
            Text(
              '$_counter',
              style:
                  const TextStyle(fontSize: 35.0, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      floatingActionButton: CustomFloatingActions( increaseFn: increase, decrementFn: decrement, ),
    );
  }
}

class CustomFloatingActions extends StatelessWidget {
  final Function increaseFn;
  final Function decrementFn;

  const CustomFloatingActions({
    Key? key, required this.increaseFn, required this.decrementFn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
            child: const Icon(Icons.add), 
            tooltip: 'increment', 
            onPressed: () => increaseFn()
        ),
        const SizedBox(
          width: 10,
        ),
        FloatingActionButton(
            child: const Icon(Icons.exposure_minus_1_outlined),
            tooltip: 'decrement',
            onPressed: () => decrementFn()

        ),
      ],
    );
  }
}
