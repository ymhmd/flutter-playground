import 'package:flutter/material.dart';
import 'package:sample_app/types/my_item.dart';

// final List<String> entries = <String>['A', 'B', 'C'];
// final List<int> colorCodes = <int>[600, 500, 100];

// items = [{title: "XXX", color: "jhjh"}]

class MyListView extends StatelessWidget {
  final List<MyItem> items;
  const MyListView({super.key, required this.items});


  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: const EdgeInsets.all(8),
        shrinkWrap: true,
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 50,
            color: Colors.amber[items[index].color],
            child: Center(child: Text('Entry ${items[index].title}')),
          );
        });
  }
}
