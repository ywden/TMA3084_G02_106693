// Lab Exercise 4.1, Slide 93: Detail screen for the Cheese Pizza

import 'package:flutter/material.dart';

class VegetablePizzaScreen extends StatelessWidget {
  const VegetablePizzaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: const Text('Vegetable Pizza'),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Image.asset(
              'assets/images/pizza_1.png',
              width: 200,
            ),

            const SizedBox(height: 20),

            const Text(
              'Vegetable Pizza is a pizza with mixed vegetable'
              'mix on top of it.',
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 30),

            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Back'),
            ),

          ],
        ),
      ),
    );
  }
}