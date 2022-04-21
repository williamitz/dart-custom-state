import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:counter/providers/counter_provider.dart';
import 'package:counter/widgets/provider_colums.dart';
import 'package:counter/widgets/provider_floating_actions.dart';

class ProviderScreen extends StatelessWidget {
  const ProviderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // int _counter = 0;
 
    return ChangeNotifierProvider(
      create: (_) => CounterProv(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Provider state'),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.settings_backup_restore),
              hoverColor: Colors.pinkAccent,
              tooltip: 'reset counter',
            )
          ],
        ),
        body: const Center(
          child: ProviderColumns(),
        ),
        floatingActionButton: const ProviderFloatingActions(),
      ),
    );
  }
}


