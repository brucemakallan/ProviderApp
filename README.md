# Provider App - State Management

Using [Provider](https://pub.dev/packages/provider) for State Management

1. Create a basic Flutter Application to increment / decrement a counter
   1. Text Widget to display the current count
   2. Button Widget to increment count
   3. Button Widget to decrement count
   
   **Note: The Widget Tree is as follows**
   1. MultiProvider - `main.dart`
      1. Home - `home.dart`
         1. Column Widget
            1. Text - `text.dart`
            2. ButtonAdd - `button_add.dart` 
            3. ButtonSubtract - `button_subtract.dart`

2. Create a Counter class - this will be our State `/lib/state/counter.dart`
   1. Add a getter and setter for the counter
   2. Add increment and decrement methods that use the setter
   ```
    import 'package:flutter/material.dart';

    class Counter extends ChangeNotifier {
      int _value = 12;

      // getter
      int get count => _value;

      // setter
      set count(int newValue) {
        _value = newValue;
        notifyListeners();
      }

      increment() {
        count = _value + 1;
      }

      decrement() {
        count = _value - 1;
      }
    }
   ```

3. Wrap the entire App in `MultiProvider` then add a `ChangeNotifierProvider` to the list of providers.
   ```
   import 'package:provider/provider.dart';
   ...
   return MultiProvider(
      providers: [
        ChangeNotifierProvider<Counter>.value(
          value: Counter(),
        )
      ],
      child: App,
    );
   ```

4. To access the State class:
   ```
   Counter counter = Provider.of<Counter>(context);
   ```

5. To manipulate the count value:
   ```
   // use the getter to access the count
    counter.count

   // use the setter to change count
    counter.count = 2
   
   // use methods to increment / decrement e.g.
    RaisedButton(
      onPressed: () => counter.decrement(),
      child: Text('Subtract'),
    );
   ```
