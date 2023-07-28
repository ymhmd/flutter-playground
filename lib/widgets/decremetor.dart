import 'package:flutter/material.dart';

class Decrementor extends StatefulWidget {
  const Decrementor({super.key});

  @override
  State<Decrementor> createState() => _DecrementorState();
}

class _DecrementorState extends State<Decrementor> {
  int _counter = 0;

  void _decrement() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ElevatedButton(
          onPressed: _decrement,
          child: const Text('Decrement'),
        ),
        const SizedBox(width: 16),
        Text('Count: $_counter'),
      ],
    );
  }
}