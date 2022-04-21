import 'package:flutter/material.dart';

import 'package:counter/screens/bloc_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Material App',
        debugShowCheckedModeBanner: false,
        initialRoute: '',
        routes: {
          '' : ((context) => const BlocScreen())
        },
      );
  }
}
