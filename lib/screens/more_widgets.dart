import 'package:flutter/material.dart';

class MoreWidgets extends StatelessWidget {
  const MoreWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> list = List<Widget>.generate(
      10,
      (index) => const Text(" "),
    );
    return Scaffold(
      body: Center(
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return list[index];
          },
        ),
      ),
    );
  }
}
