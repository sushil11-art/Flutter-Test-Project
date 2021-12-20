import 'package:flutter/material.dart';
import 'package:manage_state/counter_block.dart';
import 'package:manage_state/counter_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<CounterBlock>.value(
          value: CounterBlock(),
        )
      ],
      child: MaterialApp(
        home: CounterPage(),
      ),
    );
  }
}


