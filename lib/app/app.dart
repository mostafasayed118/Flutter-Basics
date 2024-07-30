import 'package:flutter/material.dart';
import 'package:session_code_flutter/async_programming/future.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: FutureScreen(),
    );
  }
}
