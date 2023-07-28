import 'package:redux/redux.dart';
import 'package:sample_app/state/redux/app_state.dart';
import 'package:sample_app/state/redux/language/main.dart';
import 'package:sample_app/state/redux/reducer.dart';

class MyState {
  final int counter;
  final Languages language;
  const MyState(this.counter,this.language);
}

const MyState initialState = MyState(0, Languages.EN);

final Store<AppState> storex =
    Store<AppState>(reducer, initialState: const AppState(initialState));

