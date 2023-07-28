import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sample_app/state/provider/counter.dart';
import 'package:sample_app/widgets/basic/my_button.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  @override
  Widget build(BuildContext context) {
    CounterModel counter = context.watch<CounterModel>();

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Counter ${counter.counter}"),
            MyButton(title: "+1", onTap: () => counter.inc()),
            MyButton(title: "-1", onTap: () => counter.dec()),
          ],
        ),
      ),
    );
  }
}
