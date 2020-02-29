import 'package:mobx/mobx.dart';

part 'home_controller.g.dart';

class HomeController = _HomeBase with _$HomeController;

abstract class _HomeBase with Store {
  
  @observable
  String firstBinaryNumber;

  @action
  getFirstBinaryNumberValue(value) => firstBinaryNumber = value;

String validateFirstBinaryNumberValue(){
    try{
        RegExp recognizingNonBinaryNumbers = RegExp("[2-9]");
        if(recognizingNonBinaryNumbers.hasMatch(firstBinaryNumber)){
        return "Insira um número binário";
        }else if(((0 <= int.tryParse(((int.parse(firstBinaryNumber, radix: 2)).toRadixString(10))))) & ((int.tryParse(((int.parse(firstBinaryNumber, radix: 2)).toRadixString(10)))) <= 255 )){
          return null;
        }else {
          return "Insira um número entre 0 e 255";
        }
  }catch(e){
    return "Insira um número";
  }
}

  @computed
  bool get validateFirstBinaryNumberForm{
    if (validateFirstBinaryNumberValue() == null){
      return true;
    }else{
      return false;
    }
  }

  @observable
  String secondBinaryNumber;

  @action
  getSecondBinaryNumberValue(value) => secondBinaryNumber = value; 

String validateSecondBinaryNumberValue(){
    try{
        RegExp recognizingNonBinaryNumbers = RegExp("[2-9]");
        if(recognizingNonBinaryNumbers.hasMatch(secondBinaryNumber)){
        return "Insira um número binário";
        }else if(((0 <= int.tryParse(((int.parse(secondBinaryNumber, radix: 2)).toRadixString(10))))) & ((int.tryParse(((int.parse(secondBinaryNumber, radix: 2)).toRadixString(10)))) <= 255 )){
          return null;
        }else {
          return "Insira um número entre 0 e 255";
        }
  }catch(e){
    return "Insira um número";
  }
}

  @computed
  bool get validateSecondBinaryNumberForm{
    if (validateSecondBinaryNumberValue() == null){
      return true;
    }else{
      return false;
    }
  }  

  @observable
  String hintText = "Escolha a operação";

  @observable
  String resultText = 'Informe os números para realizar a operação';

  var operationsTypes = [
    'Soma',
    'Subtração',
    'Multiplicação',
    'Divisão',
    'Resto'
  ];

  @action
  void sum(){
    int resultNumber;
    resultNumber = int.tryParse(((int.parse(firstBinaryNumber, radix: 2)).toRadixString(10)))
    +
    int.tryParse(((int.parse(secondBinaryNumber, radix: 2)).toRadixString(10)));
    resultText = (resultNumber).toRadixString(2);
  }

  @action
  void subtraction(){
    int resultNumber;
    resultNumber = int.tryParse(((int.parse(firstBinaryNumber, radix: 2)).toRadixString(10)))
    -
    int.tryParse(((int.parse(secondBinaryNumber, radix: 2)).toRadixString(10)));
    resultText = (resultNumber).toRadixString(2);
  }
  
  @action
  void multiplication(){
    int resultNumber;
    resultNumber = (int.tryParse(((int.parse(firstBinaryNumber, radix: 2)).toRadixString(10))))
    *
    (int.tryParse(((int.parse(secondBinaryNumber, radix: 2)).toRadixString(10))));
    resultText = (resultNumber).toRadixString(2);
  }

  @action
  void division(){
    int resultNumber;
    if((int.tryParse(((int.parse(secondBinaryNumber, radix: 2)).toRadixString(10)))) != 0){
    resultNumber = (int.tryParse(((int.parse(firstBinaryNumber, radix: 2)).toRadixString(10))))
    ~/
    (int.tryParse(((int.parse(secondBinaryNumber, radix: 2)).toRadixString(10))));
    resultText = (resultNumber).toRadixString(2);
    }else {
      resultText = "Escolha um divisor diferente de 0";
    }
  }

  @action
  void rest(){
    int resultNumber;
    resultNumber = (int.tryParse(((int.parse(firstBinaryNumber, radix: 2)).toRadixString(10))))
    %
    (int.tryParse(((int.parse(secondBinaryNumber, radix: 2)).toRadixString(10)))); 
    resultText = (resultNumber).toRadixString(2);
  }

  void calculate(){
    switch (hintText) {
      case "Soma":
        sum();
        break;
      case "Subtração":
        subtraction();
        break;
      case "Multiplicação":
        multiplication();
        break;
      case "Divisão":
        division();
        break;
      case "Resto":
        rest();
        break;
      default: {
        resultText = "Escolha uma operação";
      }
    }
  }
}
