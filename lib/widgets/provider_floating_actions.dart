import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:counter/providers/counter_provider.dart';

class ProviderFloatingActions extends StatelessWidget {
  const ProviderFloatingActions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final counterProv = Provider.of<CounterProv>(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
            child: const Icon(Icons.add),
            tooltip: 'increment',
            onPressed: () {
              counterProv.increment = 1;
            }),
        const SizedBox(
          width: 10,
        ),
        FloatingActionButton(
            child: const Icon(Icons.exposure_minus_1_outlined),
            tooltip: 'decrement',
            onPressed: () {
              counterProv.decrement = 1;
            }),
      ],
    );
  }
}
