import 'package:flutter/material.dart';
import 'package:hello/kerzona_test/onboarding_page.dart';

class HOME extends StatelessWidget {
  const HOME({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Align(
          alignment: Alignment.center,
          child: Column(
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => OnboardingScreen()));
                  },
                  child: const Text('onBoarding')),
            ],
          ),
        ),
      ),
    );
  }
}
