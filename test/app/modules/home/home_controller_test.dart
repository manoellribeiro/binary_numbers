import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:problema_dois_digistarts/app/modules/home/home_controller.dart';
import 'package:problema_dois_digistarts/app/modules/home/home_module.dart';

void main() {
  initModule(HomeModule());
  HomeController home;

  setUp(() {
    home = HomeModule.to.get<HomeController>();
  });

  test("firstBinaryNumber must be equal to the value", (){
    home.getFirstBinaryNumberValue("Any value");
    expect(home.firstBinaryNumber, "Any value");
  });

  test("secondBinaryNumber must be equal to the value", (){
    home.getSecondBinaryNumberValue("Any value");
    expect(home.secondBinaryNumber, "Any value");
  });

  test("The validateFirstBinaryNumberValue method must recognize non-binary numbers", (){
    home.firstBinaryNumber = '012';
    expect(home.validateFirstBinaryNumberValue(), 'Insira um número binário');
    home.firstBinaryNumber = '013';
    expect(home.validateFirstBinaryNumberValue(), 'Insira um número binário');
    home.firstBinaryNumber = '014';
    expect(home.validateFirstBinaryNumberValue(), 'Insira um número binário');
    home.firstBinaryNumber = '015';
    expect(home.validateFirstBinaryNumberValue(), 'Insira um número binário');
    home.firstBinaryNumber = '016';
    expect(home.validateFirstBinaryNumberValue(), 'Insira um número binário');
    home.firstBinaryNumber = '017';
    expect(home.validateFirstBinaryNumberValue(), 'Insira um número binário');
    home.firstBinaryNumber = '018';
    expect(home.validateFirstBinaryNumberValue(), 'Insira um número binário');
    home.firstBinaryNumber = '019';
    expect(home.validateFirstBinaryNumberValue(), 'Insira um número binário'); 
  });

  test("The validateSecondBinaryNumberValue method must recognize non-binary numbers", (){
    home.secondBinaryNumber = '012';
    expect(home.validateSecondBinaryNumberValue(), 'Insira um número binário');
    home.secondBinaryNumber = '013';
    expect(home.validateSecondBinaryNumberValue(), 'Insira um número binário');
    home.secondBinaryNumber = '014';
    expect(home.validateSecondBinaryNumberValue(), 'Insira um número binário');
    home.secondBinaryNumber = '015';
    expect(home.validateSecondBinaryNumberValue(), 'Insira um número binário');
    home.secondBinaryNumber = '016';
    expect(home.validateSecondBinaryNumberValue(), 'Insira um número binário');
    home.secondBinaryNumber = '017';
    expect(home.validateSecondBinaryNumberValue(), 'Insira um número binário');
    home.secondBinaryNumber = '018';
    expect(home.validateSecondBinaryNumberValue(), 'Insira um número binário');
    home.secondBinaryNumber = '019';
    expect(home.validateSecondBinaryNumberValue(), 'Insira um número binário'); 
  });


  test("The validateFirstBinaryNumberValue method must recognize values greater than 255", (){
    // 255 = 11111111 in the binary systems 
    home.firstBinaryNumber = '111111111';
    expect(home.validateFirstBinaryNumberValue(), 'Insira um número entre 0 e 255');
  });

  test("The validateFirstBinaryNumberValue method must recognize negative numbers", (){ 
    home.firstBinaryNumber = '-1';
    expect(home.validateFirstBinaryNumberValue(), 'Insira um número entre 0 e 255');
  });

  test("The validateFirstBinaryNumberValue method must recognize empty or null values", (){ 
    home.firstBinaryNumber = '';
    expect(home.validateFirstBinaryNumberValue(), 'Insira um número');
    home.firstBinaryNumber = null;
    expect(home.validateFirstBinaryNumberValue(), 'Insira um número');
  });

  test("The validateSecondBinaryNumberValue method must recognize values greater than 255", (){
    // 255 = 11111111 in the binary systems 
    home.secondBinaryNumber = '111111111';
    expect(home.validateSecondBinaryNumberValue(), 'Insira um número entre 0 e 255');
  });

  test("The validateSecondBinaryNumberValue method must recognize negative numbers", (){
    home.secondBinaryNumber = '-110';
    expect(home.validateSecondBinaryNumberValue(), 'Insira um número entre 0 e 255');
  });

  test("The validateSecondBinaryNumberValue method must recognize empty or null values", (){
    home.secondBinaryNumber = '';
    expect(home.validateSecondBinaryNumberValue(), 'Insira um número');
    home.secondBinaryNumber = null;
    expect(home.validateSecondBinaryNumberValue(), 'Insira um número');
  });

  test("The validateFirstBinaryNumberForm getter must return true or false", (){
    home.firstBinaryNumber = '010';
    expect(home.validateFirstBinaryNumberForm, true);
    home.firstBinaryNumber = '012';
    expect(home.validateFirstBinaryNumberForm, false);
    home.firstBinaryNumber = '';
    expect(home.validateFirstBinaryNumberForm, false);
    home.firstBinaryNumber = null;
    expect(home.validateFirstBinaryNumberForm, false);
  });

  test("The validateSecondBinaryNumberForm getter must return true or false", (){
    home.secondBinaryNumber = '111';
    expect(home.validateSecondBinaryNumberForm, true);
    home.secondBinaryNumber = '071';
    expect(home.validateSecondBinaryNumberForm, false);
    home.secondBinaryNumber = '';
    expect(home.validateSecondBinaryNumberForm, false);
    home.secondBinaryNumber = null;
    expect(home.validateSecondBinaryNumberForm, false);
  });


  group("calculate() method is doing the right operation", (){
    test("Sum is working", (){
    home.secondBinaryNumber = '01';
    home.secondBinaryNumber = '0101';
    home.hintText = 'Soma';
    home.calculate();
    expect(home.resultText, '110');
  });

  });
}
