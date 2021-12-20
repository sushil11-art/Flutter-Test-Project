import 'package:flutter/material.dart';
import 'package:manage_state/counter_block.dart';
import 'package:manage_state/widgets/decrement.dart';
import 'package:manage_state/widgets/increment.dart';
import 'package:provider/provider.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  // CounterBlock
  Widget build(BuildContext context) {
    final CounterBlock counterBlock = Provider.of<CounterBlock>(context);
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(counterBlock.counter.toString(),
                  style: const TextStyle(fontSize: 62)),
              Increment(),
              Decrement(),
            ],
          ),
        ),
      ),
    );
  }
}
