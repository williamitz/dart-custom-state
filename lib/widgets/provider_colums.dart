import 'package:counter/providers/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProviderColumns extends StatelessWidget {
  const ProviderColumns({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final counterProv = Provider.of<CounterProv>(context);

    return Column(
      // alineacion vertical
      mainAxisAlignment: MainAxisAlignment.center,

      children: [
        const Text('Aplicando providers para manejo de estado'),
        const SizedBox(height: 20),
        Text(
          '${counterProv.counter}',
          style: const TextStyle(fontSize: 35.0, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
