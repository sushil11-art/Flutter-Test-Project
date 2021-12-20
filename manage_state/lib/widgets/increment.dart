import 'package:flutter/material.dart';
import 'package:manage_state/counter_block.dart';
import 'package:provider/provider.dart';

class Increment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CounterBlock counterBlock = Provider.of<CounterBlock>(context);

    return FlatButton.icon(
        onPressed: () => counterBlock.increment(),
        icon: const Icon(Icons.add),
        label: const Text('Add'));
  }
}
