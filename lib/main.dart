import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:provider/provider.dart';
import 'package:redux/redux.dart';
import 'package:sample_app/screens/splash.dart';
import 'package:sample_app/state/provider/counter.dart';
import 'package:sample_app/state/redux/app_state.dart';
import 'package:sample_app/state/redux/store.dart';

void main() {
   runApp(
    ChangeNotifierProvider(
      create: (context) => CounterModel(),
      child: MyApp(
        store: storex,
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  final Store<AppState> store;

  const MyApp({super.key, required this.store}) ;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // return MaterialApp(
    return StoreProvider<AppState>(
      store: store,
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          // colorSchemeSeed: const Color(0xff6750a4),
          // useMaterial3: true,
        ),
        home: const SplashPage(),
      ),
    );
  }
}
