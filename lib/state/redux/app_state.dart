import 'package:flutter/material.dart';
import 'package:sample_app/state/redux/counter/main.dart';
import 'package:sample_app/state/redux/language/main.dart';
import 'package:sample_app/state/redux/store.dart';

@immutable
class AppState {
  final MyState state;
  const AppState(this.state);

  static Function incrementCounter = () => storex.dispatch(CounterActions.inc);
  static Function decrementCounter = () => storex.dispatch(CounterActions.dec);
  static Function resetLangauge = () => storex.dispatch(LanguageActions.resetLanguage);
  static Function setLanguage = () => storex.dispatch(LanguageActions.changeLanguage);
}