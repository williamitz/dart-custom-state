import 'package:flutter/material.dart';
import 'package:counter/providers/counter_bloc.dart';

class BlocFloatingActions extends StatelessWidget {
  const BlocFloatingActions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final blocCounter = CounterBloc();

    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
            child: const Icon(Icons.add),
            tooltip: 'increment',
            onPressed: () => blocCounter.increment = 1),
        const SizedBox(
          width: 10,
        ),
        FloatingActionButton(
            child: const Icon(Icons.exposure_minus_1_outlined),
            tooltip: 'decrement',
            onPressed: () => blocCounter.decrement = 1),
      ],
    );
  }
}
