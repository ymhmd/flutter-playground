import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:sample_app/state/redux/app_state.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  showModal(BuildContext context) {
    return () => showModalBottomSheet<void>(
        context: context,
        builder: (BuildContext context) => SizedBox(
              height: 200,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ElevatedButton(
                      child: const Text('Close BottomSheet'),
                      onPressed: () => Navigator.pop(context),
                    ),
                  ],
                ),
              ),
            ));
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Center(
            child: Column(
          children: [
            StoreConnector<AppState, AppState>(
              converter: (store) => store.state,
              builder: (context, store) {
                return Text(
                  'The button has been pushed this many times: ${store.state.counter}',
                );
              },
            ),
            StoreConnector<AppState, AppState>(
              converter: (store) => store.state,
              builder: (context, store) {
                return Text(
                  'Language is: ${store.state.language.name}',
                );
              },
            )
          ],
        )),
      );
}
