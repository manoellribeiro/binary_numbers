import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:problema_dois_digistarts/app/modules/home/components/textField/textField_widget.dart';
import 'package:problema_dois_digistarts/app/modules/home/home_controller.dart';
import 'package:problema_dois_digistarts/app/modules/home/home_module.dart';

import 'package:problema_dois_digistarts/app/modules/home/home_page.dart';

void main() {
  initModule(HomeModule());
  HomeController controller;

  setUp((){
    controller = HomeModule.to.get<HomeController>();
  });

  testWidgets('Initial HomePage State', (WidgetTester tester) async {
  await tester.pumpWidget(buildTestableWidget(HomePage()));
  expect(find.text("Operações com \n números binários"), findsOneWidget);
  expect(find.text("Realizar operação"), findsOneWidget);
  expect(find.text("Escolha a operação"), findsOneWidget);
  expect(find.text("Primeiro número binário"), findsOneWidget);
  expect(find.text("Segundo número binário"), findsOneWidget);
  expect(find.text("Insira um número"), findsNWidgets(2));
  expect(find.byIcon(Icons.filter_1), findsOneWidget);
  expect(find.byIcon(Icons.filter_2), findsOneWidget);
  });

  testWidgets('Testing TextFormFieldWidgets', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(HomePage()));

    await tester.enterText(find.byKey(Key("FirstTextFieldKey")), "2");
    expect(controller.validateFirstBinaryNumberValue(), 'Insira um número binário');
  });
}
