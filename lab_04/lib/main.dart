
import 'package:flutter/material.dart';
import 'menu.dart';
import 'vegetable_pizza.dart';
import 'cheese_pizza.dart';
import 'fries.dart';
import 'order_summary.dart';

void main() {
  runApp(const PizzaStoreApp());
}

class PizzaStoreApp extends StatelessWidget {
  const PizzaStoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'Pizza Store',

      // First screen
      initialRoute: '/',

      // Named routes
      routes: {

        '/': (context) => const MenuScreen(),

        'vegetable': (context) =>
            const VegetablePizzaScreen(),

        'cheese': (context) =>
            const CheesePizzaScreen(),

        'fries': (context) =>
            const FriesScreen(),
        
        'order_summary': (context) =>
            const OrderSummaryScreen(),

      },
    );
  }
}