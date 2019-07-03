import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'state/counter.dart';

class ButtonSubtract extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Counter counter = Provider.of<Counter>(context);

    return RaisedButton(
      onPressed: () => counter.decrement(),
      child: Text('Subtract'),
    );
  }
}
