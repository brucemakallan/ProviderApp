import 'package:flutter/material.dart';

import './button_add.dart';
import './text.dart';
import 'button_subtract.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Provider App'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[CustomText(), ButtonAdd(), ButtonSubtract()],
        ),
      ),
    );
  }
}
