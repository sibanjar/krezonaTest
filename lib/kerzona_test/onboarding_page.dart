import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  OnboardingScreen({super.key});

  // Replace these with your asset paths
  final List<String> imageUrls = [
    'assets/image_1.jpg',
    'assets/image_2.jpg',
    'assets/image_3.jpg',
    'assets/image_4.jpg',
    'assets/image_5.jpg',
    'assets/image_6.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 40.0),
            child: Center(
              child: Text(
                'edtraa',
                style: TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          GridView.builder(
            shrinkWrap: true,
            physics:
                const NeverScrollableScrollPhysics(), // Prevent scrolling issues
            itemCount: imageUrls.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            itemBuilder: (context, index) {
              return Container(
                child: Image.asset(imageUrls[index]),
              );
            },
          ),
          Column(
            children: [
              const Text(
                'From The Top 1%',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                '"Guiding Futures, One Mentorship at a Time!"',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white60,
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 80, vertical: 15),
                ),
                child: const Text('GET STARTED'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (_)=> OnboardingScreen()));
                },
                child: const Text(
                  'Log In',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
