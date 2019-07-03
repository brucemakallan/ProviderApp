import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './state/counter.dart';

class CustomText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Counter counter = Provider.of<Counter>(context);
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Text(
        "${counter.count}",
        style: TextStyle(fontSize: 66.0),
      ),
    );
  }
}
