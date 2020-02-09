import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:problema_dois_digistarts/app/modules/home/components/resultAlertDialog/resultAlertDialog_widget.dart';

main() {
  testWidgets('ResultAlertDialogWidget has message',
      (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(ResultAlertDialogWidget()));
    final textFinder = find.text('ResultAlertDialog');
    expect(textFinder, findsOneWidget);
  });
}
