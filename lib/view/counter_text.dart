import 'package:flutter/material.dart';
import 'package:organic_counter/model/counter_notifier.dart';
import 'package:organic_injector/organic_injector.dart';

class CounterText extends StatefulWidget {
  @override
  State<StatefulWidget> createState()=> new _CounterTextState();
}


class _CounterTextState extends State<CounterText>{

  CounterNotifier _counterNotifier;

  @override
  void initState() {
    _counterNotifier = Injector.instance.getInstance(CounterNotifier);
    _counterNotifier.addListener(onCounterChanged);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Text(
      _counterNotifier.value.toString(),
      style: Theme.of(context).textTheme.display1,
    );
  }

  @override
  void dispose() {
    _counterNotifier.dispose();
    _counterNotifier = null;
    super.dispose();
  }


  void onCounterChanged() {
    setState(() => null );
  }
}