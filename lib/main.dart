import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './home.dart';
import './state/counter.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<Counter>.value(
          value: Counter(),
        )
      ],
      child: MaterialApp(
        home: Home(),
      ),
    );
  }
}
