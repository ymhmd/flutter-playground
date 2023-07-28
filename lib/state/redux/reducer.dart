import 'package:sample_app/state/redux/app_state.dart';
import 'package:sample_app/state/redux/counter/main.dart';
import 'package:sample_app/state/redux/language/main.dart';
import 'package:sample_app/state/redux/store.dart';

AppState reducer(AppState previousState, dynamic action) {
  switch (action) {
    case LanguageActions.changeLanguage:
      return AppState(MyState(previousState.state.counter, Languages.UK));
    case LanguageActions.resetLanguage:
      return AppState(MyState(previousState.state.counter, Languages.EN));
    case CounterActions.inc:
      return AppState(MyState(
          previousState.state.counter + 1, previousState.state.language));
    case CounterActions.dec:
      return AppState(MyState(
          previousState.state.counter - 1, previousState.state.language));
  }
  return previousState;
}
