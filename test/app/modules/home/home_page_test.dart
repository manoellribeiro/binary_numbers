import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';
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

  group("Testing TextFormFieldWidgets", () {
    testWidgets('Testing if the first TextFormFieldWidgets is showing non-binary number alert', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(HomePage()));
    await tester.enterText(find.byKey(Key("FirstTextFieldKey")), "2");
    await tester.pump();
    expect(find.text("Insira um número binário"), findsOneWidget);
  });

  testWidgets('Testing if the first TextFormFieldWidgets is showing greater than 255 and smaller than 0 alert', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(HomePage()));
    await tester.enterText(find.byKey(Key("FirstTextFieldKey")), "-01");
    await tester.pump();
    expect(find.text("Insira um número entre 0 e 255"), findsOneWidget);

    await tester.enterText(find.byKey(Key("FirstTextFieldKey")), "1111111111111");
    await tester.pump();
    expect(find.text("Insira um número entre 0 e 255"), findsOneWidget);
  });
  
  
  testWidgets('Testing if the second TextFormFieldWidgets is showing non-binary number alert', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(HomePage()));
    await tester.enterText(find.byKey(Key("SecondTextFieldKey")), "2");
    await tester.pump();
    expect(find.text("Insira um número binário"), findsOneWidget);
  });

  testWidgets('Testing if the second TextFormFieldWidgets is showing greater than 255 and smaller than 0 alert', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(HomePage()));
    await tester.enterText(find.byKey(Key("SecondTextFieldKey")), "-01");
    await tester.pump();
    expect(find.text("Insira um número entre 0 e 255"), findsOneWidget);

    await tester.enterText(find.byKey(Key("SecondTextFieldKey")), "1111111111111");
    await tester.pump();
    expect(find.text("Insira um número entre 0 e 255"), findsOneWidget);
  });

  testWidgets('Alert is fading if the user input is only binary numbers', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(HomePage()));
    await tester.enterText(find.byKey(Key("FirstTextFieldKey")), "011");
    await tester.enterText(find.byKey(Key("SecondTextFieldKey")), "0101");
    await tester.pump();
    expect(find.text('Insira um número'), findsNothing);
    expect(find.text("Insira um número binário"), findsNothing);
    expect(find.text("Insira um número entre 0 e 255"), findsNothing);
  });

  });

  group("Testing DropdownButton", (){

    testWidgets("Tap is working", (WidgetTester tester) async{
      await tester.pumpWidget(buildTestableWidget(HomePage()));
      await tester.tap(find.byKey(Key("DropdownButton")));

      expect(find.text("Soma"), findsOneWidget);
      expect(find.text("Subtração"), findsOneWidget);
      expect(find.text("Multiplicação"), findsOneWidget);
      expect(find.text("Divisão"), findsOneWidget);
      expect(find.text("Resto"), findsOneWidget);
    });
  
  group("RaisedButton has disable and able states", (){
    testWidgets("RaisedButton is disable when user inputs are both null ", (WidgetTester tester) async {
      await tester.pumpWidget(buildTestableWidget(HomePage()));
      await tester.enterText(find.byKey(Key("FirstTextFieldKey")), "");
      await tester.enterText(find.byKey(Key("SecondTextFieldKey")), "");
      await tester.pump();
      final raisedButton = tester.firstWidget(find.byType(RaisedButton)) as RaisedButton;
      expect((raisedButton.enabled), false);

    });

    testWidgets("RaisedButton is disable when user input are greater than 255 and smaller than 0", (WidgetTester tester) async {
      await tester.pumpWidget(buildTestableWidget(HomePage()));
      await tester.enterText(find.byKey(Key("FirstTextFieldKey")), "1111111111111");
      await tester.enterText(find.byKey(Key("SecondTextFieldKey")), "-01");
      await tester.pump();
      final raisedButton = tester.firstWidget(find.byType(RaisedButton)) as RaisedButton;
      expect((raisedButton.enabled), false);

    });

    testWidgets("RaisedButton is disable when user inputs are both non-binary numbers", (WidgetTester tester) async {
      await tester.pumpWidget(buildTestableWidget(HomePage()));
      await tester.enterText(find.byKey(Key("FirstTextFieldKey")), "112");
      await tester.enterText(find.byKey(Key("SecondTextFieldKey")), "107");
      await tester.pump();
      final raisedButton = tester.firstWidget(find.byType(RaisedButton)) as RaisedButton;
      expect((raisedButton.enabled), false);
    });

    testWidgets("RaisedButton is able when user inputs are both valid", (WidgetTester tester) async {
      await tester.pumpWidget(buildTestableWidget(HomePage()));
      await tester.enterText(find.byKey(Key("FirstTextFieldKey")), "11");
      await tester.enterText(find.byKey(Key("SecondTextFieldKey")), "10");
      await tester.pump();
      final raisedButton = tester.firstWidget(find.byType(RaisedButton)) as RaisedButton;
      expect((raisedButton.enabled), true);
    });
  });
  });
}
