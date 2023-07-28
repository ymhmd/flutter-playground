import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:sample_app/state/redux/app_state.dart';
import 'package:sample_app/widgets/basic/my_button.dart';

class CounterReduxPage extends StatefulWidget {
  const CounterReduxPage({super.key});

  @override
  State<CounterReduxPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterReduxPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            StoreConnector<AppState, AppState>(
              converter: (store) => store.state,
              builder: (context, counter) {
                return Text("Counter is ${counter.state.counter}");
              },
            ),
            MyButton(
                title: "+", onTap: () => AppState.incrementCounter()),
            MyButton(
                title: "-", onTap: () => AppState.decrementCounter()),
            MyButton(
                title: "Set Language", onTap: () => AppState.setLanguage()),
            MyButton(
                title: "Reset Language", onTap: () => AppState.resetLangauge()),
          ],
        ),
      ),
    );
  }
}
