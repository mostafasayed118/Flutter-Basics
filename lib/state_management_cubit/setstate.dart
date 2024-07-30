import 'dart:developer';

import 'package:flutter/material.dart';

class SetStateScreen extends StatefulWidget {
  const SetStateScreen({super.key});

  @override
  _SetStateScreenState createState() => _SetStateScreenState();
}

class _SetStateScreenState extends State<SetStateScreen> {
  @override
  void initState() {
    super.initState();
    log('initState');
  }

  @override
  void dispose() {
    super.dispose();
    log('dispose');
  }

  @override
  Widget build(BuildContext context) {
    log('build');

    return Scaffold(
      appBar: AppBar(
        title: const Text('Set State'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'You have pushed the button this many times:',
            ),
            const SizedBox(
              height: 20,
            ),
            MaterialButton(
                onPressed: () {
                  setState(() {
                    log('setState');
                  });
                },
                child: const Text('Set State')),
          ],
        ),
      ),
    );
  }
}
