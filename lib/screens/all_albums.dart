import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sample_app/apis/album.dart';
import 'package:sample_app/state/provider/counter.dart';
import 'package:sample_app/types/album.dart';
import 'package:sample_app/types/my_item.dart';
import 'package:sample_app/widgets/basic/my_button.dart';
import 'package:sample_app/widgets/basic/my_list_view.dart';
import 'dart:math';

class AllAlbumsPage extends StatefulWidget {
  const AllAlbumsPage({super.key});

  @override
  State<AllAlbumsPage> createState() => _AllAlbumsPageState();
}

class _AllAlbumsPageState extends State<AllAlbumsPage> {
  int counter = 0;
  List<MyItem> listItems = [];
  late TextEditingController _controller;
  late Future<List<Album>> futureAlbum;
  final _random = Random();

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();

    AlbumsAPI a = AlbumsAPI();
    futureAlbum = a.fetchAlbum();

    futureAlbum.then((data) {
      List<MyItem> itemsToAdd = data
          .map((e) {
            int color = _random.nextInt(7) * 100;
            return MyItem(e.title, color);
          })
          .toList()
          .sublist(1, 5);

      setState(() {
        listItems.addAll(itemsToAdd);
      });
    });

  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void onAddNewItem() {
    int color = _random.nextInt(4) * 100;
    String value = _controller.text;
    setState(() {
      listItems.add(MyItem(value, color));
    });
  }

  @override
  Widget build(BuildContext context) {
    var X = Consumer<CounterModel>(
      builder: (context, c, child) {
        return c.counter != null ? Text('Counter is: ${c.counter}'): const Text('Loading.....');
      },
    );
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            X,
            listItems.isNotEmpty
                ? MyListView(
                    items: listItems,
                  )
                : const Text("loading albums....."),
            TextField(
              controller: _controller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'New Item',
              ),
            ),
            MyButton(title: "Add new one", onTap: onAddNewItem),
          ],
        ),
      ),
    );
  }
}
