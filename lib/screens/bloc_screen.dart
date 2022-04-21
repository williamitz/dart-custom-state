import 'package:flutter/material.dart';

import 'package:counter/widgets/bloc_columns.dart';
import 'package:counter/widgets/bloc_floating_actions.dart';

class BlocScreen extends StatelessWidget {
  const BlocScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return Scaffold(
        appBar: AppBar(
          title: const Text('Bloc state'),
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
          child: BlocColumns(),
        ),
        floatingActionButton: const BlocFloatingActions(),
      );
  }
}


