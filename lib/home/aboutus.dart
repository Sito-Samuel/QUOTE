import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(textAlign:TextAlign.justify,
                'At DailyQuote, we believe in the transformative power of words. Our mission is to uplift, inspire, and empower you every day through carefully curated quotes that resonate with the spirit of motivation and positivity.'
              )
            ],
          ),
        ),
      ),
    );
  }
}
