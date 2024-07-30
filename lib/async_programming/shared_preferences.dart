import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesScreen extends StatefulWidget {
  const SharedPreferencesScreen({super.key});

  @override
  State<SharedPreferencesScreen> createState() =>
      _SharedPreferencesScreenState();
}

class _SharedPreferencesScreenState extends State<SharedPreferencesScreen> {
  bool? onboarding;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            onboarding == null
                ? const Text('null')
                : onboarding == true
                    ? const Text('true')
                    : const Text('false'),
            const SizedBox(
              height: 40,
            ),
            ElevatedButton(
                onPressed: () async {
                  final prefs = await SharedPreferences.getInstance();
                  prefs.setBool('onboarding', true);
                },
                child: const Text('Set Data')),
            const SizedBox(
              height: 40,
            ),
            ElevatedButton(
                onPressed: () async {
                  final prefs = await SharedPreferences.getInstance();

                  setState(() {
                    onboarding = prefs.getBool('onboarding');
                  });
                },
                child: const Text('Get Data')),
          ],
        ),
      ),
    );
  }
}
