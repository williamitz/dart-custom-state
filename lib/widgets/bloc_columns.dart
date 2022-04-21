import 'package:flutter/material.dart';
import 'package:counter/providers/counter_bloc.dart';

class BlocColumns extends StatelessWidget {


  const BlocColumns({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  final CounterBloc counterBloc = CounterBloc();

    return Column(
      // alineacion vertical
      mainAxisAlignment: MainAxisAlignment.center,

      children: [
        const Text('Aplicando patrón bloc para mantener estado'),
        const SizedBox(height: 20),
        StreamBuilder(
          stream: counterBloc.counter,
          // initialData: 0,
          builder: (_, AsyncSnapshot<int> snapshot) {
            final counter = snapshot.data ?? 0;

            print('counter: $counter');

            return Text(
              '$counter',
              style:
                  const TextStyle(fontSize: 35.0, fontWeight: FontWeight.bold),
            );
          },
        ),
      ],
    );
  }
}
