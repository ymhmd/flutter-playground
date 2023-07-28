import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  final Function()? onInc;
  final Function()? onDec;

  const Counter({Key? key, required this.onInc, required this.onDec}) : super(key: key);

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {

  @override
  Widget build(BuildContext context) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
            onPressed: widget.onInc,
            child: const Text('Increment'),
          ),
          ElevatedButton(
            onPressed: widget.onDec,
            child: const Text('Decrement'),
          ),
            ]
          ),
        ],
      );
}
