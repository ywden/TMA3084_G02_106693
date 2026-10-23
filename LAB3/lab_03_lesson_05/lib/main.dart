import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Brew & Co. Menu',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.brown),
      ),
      home: const CoffeeMenuPage(),
    );
  }
}

class CoffeeMenuPage extends StatelessWidget {
  const CoffeeMenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("☕️ Brew & Co. Menu"),
        backgroundColor: Colors.brown,
        foregroundColor: Colors.white,
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),

            const Icon(Icons.local_cafe, size: 80, color: Colors.brown),

            const Text(
              "Welcome to Brew & Co.",
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 10),

            const Text(
              "Fresh coffee and delicious pastries",
              style: TextStyle(fontSize: 16),
            ),

            const SizedBox(height: 20),

            MenuCard(
              image: "assets/images/latte.jpg",
              icon: Icons.local_cafe,
              name: "Latte",
              price: "RM 10.00",
            ),

            MenuCard(
              image: "assets/images/matcha.jpg",
              icon: Icons.emoji_food_beverage,
              name: "Matcha Latte",
              price: "RM 12.00",
            ),

            MenuCard(
              image: "assets/images/croissant.jpg",
              icon: Icons.bakery_dining,
              name: "Croissant",
              price: "RM 7.00",
            ),

            MenuCard(
              image: "assets/images/cake.jpg",
              icon: Icons.cake,
              name: "Chocolate Cake",
              price: "RM 13.00",
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

class MenuCard extends StatelessWidget {
  //menu
  final String image;
  final IconData icon;
  final String name;
  final String price;

  const MenuCard({
    super.key,
    required this.image,
    required this.icon,
    required this.name,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          children: [
            Image.asset(image, width: 90, height: 90, fit: BoxFit.cover),

            const SizedBox(width: 15),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(icon, color: Colors.brown),

                      const SizedBox(width: 5),

                      Text(
                        name,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 10),

                  Text(
                    price,
                    style: const TextStyle(fontSize: 18, color: Colors.grey),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
