import 'package:flutter/material.dart';

class Counter1 extends StatelessWidget {
  const Counter1({super.key});

  @override
  Widget build(BuildContext context) {
    return const Card(
      elevation: 5,
      child: SizedBox(
        width: 150,
        height: 150,
        child: Center(
          child: Text('0', style: TextStyle(fontSize: 30)),
        ),
      ),
    );
  }
}
