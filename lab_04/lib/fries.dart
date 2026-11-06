// Lab Exercise 4.1, Slide 93: Detail screen for the Box of Fries
import 'package:flutter/material.dart';

class FriesScreen extends StatelessWidget {
  const FriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: const Text('Box of Fries'),
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset(
              'assets/images/fries.jpg',
              width: 200,
            ),
            const Text(
              'Box of Fries is a serving of hot and crispy '
              'fries.',
            ),
            const SizedBox(height: 30),

            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Back'),
            )
          ],
        ),
      ),
    );
  }
}
