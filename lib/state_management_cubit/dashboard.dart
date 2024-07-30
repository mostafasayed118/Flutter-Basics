import 'package:flutter/material.dart';
import 'package:session_code_flutter/state_management_cubit/counter.dart';
import 'package:session_code_flutter/state_management_cubit/counter2.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Card(
        elevation: 10,
        child: SizedBox(
          width: 400,
          height: 400,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Dashboard',
                style: TextStyle(
                  fontSize: 60,
                ),
              ),
              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Counter1(),
                  SizedBox(width: 20),
                  Counter2(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
