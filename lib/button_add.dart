import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'state/counter.dart';

class ButtonAdd extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Counter counter = Provider.of<Counter>(context);
    return RaisedButton(
      onPressed: () => counter.increment(),
      child: Text('Add'),
    );
  }
}
