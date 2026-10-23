import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:lab_03_lesson_05/main.dart' as app;

void main() {
  testWidgets('App launches and shows a Scaffold', (WidgetTester tester) async {
    app.main();
    await tester.pump();

    expect(find.byType(MaterialApp), findsOneWidget);
    expect(find.byType(Scaffold), findsWidgets);
  });
}
