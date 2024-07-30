// void main() {
//   var future = Future(sum)
//       .then((value) => print(value))
//       .catchError((error) => print(error));

//   var res = Future.delayed(const Duration(seconds: 2), printHello);
//   print('1');
// }

// void printHello() {
//   print('hello');
// }

// int sum() {
//   return int.parse('111');
// }

import 'package:flutter/material.dart';

class FutureScreen extends StatelessWidget {
  const FutureScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Future Screen'),
      ),
      body: FutureBuilder(
        future: Future.delayed(
            const Duration(
              seconds: 3,
            ), () {
          return 'data';
        }),
        builder: (context, snapShot) {
          if (snapShot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return const Center(
            child: Text('data'),
          );
        },
        // builder: (context, snapShot) {
        //   return Center(
        //     child: snapShot.hasData
        //         ? Text(snapShot.data.toString())
        //         : const CircularProgressIndicator(),
        //   );
        // },
      ),
    );
  }
}
