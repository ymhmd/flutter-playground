import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

import '../types/album.dart';

class AlbumsAPI {
  final String url = "https://jsonplaceholder.typicode.com/albums";

  Future<List<Album>> fetchAlbum() async {
    List<Album> albums;
    final response = await http.get(Uri.parse(url));

    albums = (json.decode(response.body) as List)
        .map((i) => Album.fromJson(i))
        .toList();

    return albums;
  }
}
