import 'package:flutter/material.dart';
import 'package:sample_app/apis/album.dart';
import 'package:sample_app/types/album.dart';

class CounterModel extends ChangeNotifier {
  int? counter;

  CounterModel() {
    initCounter();
  }

  void initCounter() async {
    AlbumsAPI a = AlbumsAPI();
    List<Album> futureAlbum = await a.fetchAlbum();
    counter = futureAlbum.length;
    notifyListeners();
  }

  void inc() {
    counter = counter!+1;
    notifyListeners();
  }

  void dec() {
    counter = counter!-1;
    notifyListeners();
  }
}
