import 'package:flutter/material.dart';
import 'package:organic_counter/model/counter_notifier.dart';
import 'package:organic_injector/organic_injector.dart';
class IncrementButton extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _IncrementButtonState();

}

class _IncrementButtonState extends State<IncrementButton>{

  CounterNotifier _counterNotifier;

  @override
  void initState() {
    super.initState();
    _counterNotifier = Injector.instance.getInstance(CounterNotifier);
  }

  @override
  Widget build(BuildContext context) => new FloatingActionButton(
    onPressed: () => _counterNotifier.value++,
    tooltip: 'Increment',
    child: new Icon(Icons.add),
  );

  @override
  void dispose() {
    _counterNotifier = null;
    super.dispose();
  }

}
