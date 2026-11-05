import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:lab_04/order_summary.dart';


void main() {

  testWidgets('Order summary displays total',
      (WidgetTester tester) async {


    await tester.pumpWidget(
      const MaterialApp(
        home: OrderSummaryScreen(),
      ),
    );


    expect(
      find.text('Item: Vegetable Pizza'),
      findsOneWidget,
    );


    expect(
      find.text('Quantity: 2'),
      findsOneWidget,
    );


    expect(
      find.text('Total: RM 25.00'),
      findsOneWidget,
    );


  });

}