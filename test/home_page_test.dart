import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:widget_testing/home_page.dart';

void main() {
  //formula GIVEN, WHEN, THEN
  testWidgets('description', (tester) async {
    //step1 pump the homepage
    await tester.pumpWidget(const MaterialApp(home: HomePage()));

    //setp2 find all the widgets which you want to test
    final textW1 = find.text('0');
    final textW2 = find.text('1');
    final incrementBtn = find.byType(FloatingActionButton);

    //step3 test the text widget
    expect(textW1, findsOneWidget);
    expect(textW2, findsNothing);

    //step4 test the increment button
    await tester.tap(incrementBtn); //to tap the btn//
    await tester.pump(); //to rebuild the ui (same setstate)//
    expect(textW2, findsOneWidget);
    expect(textW1, findsNothing);
  });
}
