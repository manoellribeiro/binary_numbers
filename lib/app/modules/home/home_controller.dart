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
      try{
        if((firstBinaryNumber.contains('2') || 
        (firstBinaryNumber.contains('3')) ||
         (firstBinaryNumber.contains('4')) ||
          (firstBinaryNumber.contains('4')) ||
          (firstBinaryNumber.contains('5')) ||
          (firstBinaryNumber.contains('6')) ||
          (firstBinaryNumber.contains('7')) ||
          (firstBinaryNumber.contains('8')) ||
          (firstBinaryNumber.contains('9')))){
        return "Insira um número binário";
      }else{
        try{
          if(((0 <= int.tryParse(((int.parse(firstBinaryNumber, radix: 2)).toRadixString(10))))) & ((int.tryParse(((int.parse(firstBinaryNumber, radix: 2)).toRadixString(10)))) <= 255 )){
      return null;
    }else{
      return "Insira um número entre 0 e 255";
    }
        } on FormatException{
          return "Insira um número";
        }
      }
      }on NoSuchMethodError{
        return "Insira um número";
      }
    }on ArgumentError{
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
      try{
        if((secondBinaryNumber.contains('2') || 
        (secondBinaryNumber.contains('3')) ||
         (secondBinaryNumber.contains('4')) ||
          (secondBinaryNumber.contains('4')) ||
          (secondBinaryNumber.contains('5')) ||
          (secondBinaryNumber.contains('6')) ||
          (secondBinaryNumber.contains('7')) ||
          (secondBinaryNumber.contains('8')) ||
          (secondBinaryNumber.contains('9')))){
        return "Insira um número binário";
      }else{
        try{
          if(((0 <= int.tryParse(((int.parse(secondBinaryNumber, radix: 2)).toRadixString(10))))) & ((int.tryParse(((int.parse(secondBinaryNumber, radix: 2)).toRadixString(10)))) <= 255 )){
      return null;
    }else{
      return "Insira um número entre 0 e 255";
    }
        } on FormatException{
          return "Insira um número";
        }
      }
      }on NoSuchMethodError{
        return "Insira um número";
      }
    }on ArgumentError{
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

  //teste do git
  @action
  void calculate(){
    int firstNumber = int.tryParse(((int.parse(firstBinaryNumber, radix: 2)).toRadixString(10)));
    int secondNumber = int.tryParse(((int.parse(secondBinaryNumber, radix: 2)).toRadixString(10)));
    int resultNumber;
    switch (hintText) {
      case "Soma":{
        resultNumber = firstNumber + secondNumber;
        resultText = (resultNumber).toRadixString(2);
      }
        break;
      case "Subtração":{
        resultNumber = firstNumber - secondNumber;
        resultText = (resultNumber).toRadixString(2);
      }
        break;
      case "Multiplicação":{
        resultNumber = firstNumber*secondNumber;
        resultText = (resultNumber).toRadixString(2);
      }
        break;
      case "Divisão": {
        if(secondNumber != 0){
        resultNumber = firstNumber~/secondNumber;
        resultText =(resultNumber).toRadixString(2);
        }else{
          resultText = "Escolha um divisor diferente de 0"; 
        }
      }
        break;
      case "Resto": {
        resultNumber = firstNumber % secondNumber;
        resultText = (resultNumber).toRadixString(2);
      }
        break;
      default: {
        resultText = "Escolha uma operação";
      }
    }
  }




}
