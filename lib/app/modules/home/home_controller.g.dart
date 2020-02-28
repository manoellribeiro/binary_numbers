// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeBase, Store {
  Computed<bool> _$validateFirstBinaryNumberFormComputed;

  @override
  bool get validateFirstBinaryNumberForm =>
      (_$validateFirstBinaryNumberFormComputed ??=
              Computed<bool>(() => super.validateFirstBinaryNumberForm))
          .value;
  Computed<bool> _$validateSecondBinaryNumberFormComputed;

  @override
  bool get validateSecondBinaryNumberForm =>
      (_$validateSecondBinaryNumberFormComputed ??=
              Computed<bool>(() => super.validateSecondBinaryNumberForm))
          .value;

  final _$firstBinaryNumberAtom = Atom(name: '_HomeBase.firstBinaryNumber');

  @override
  String get firstBinaryNumber {
    _$firstBinaryNumberAtom.context.enforceReadPolicy(_$firstBinaryNumberAtom);
    _$firstBinaryNumberAtom.reportObserved();
    return super.firstBinaryNumber;
  }

  @override
  set firstBinaryNumber(String value) {
    _$firstBinaryNumberAtom.context.conditionallyRunInAction(() {
      super.firstBinaryNumber = value;
      _$firstBinaryNumberAtom.reportChanged();
    }, _$firstBinaryNumberAtom, name: '${_$firstBinaryNumberAtom.name}_set');
  }

  final _$secondBinaryNumberAtom = Atom(name: '_HomeBase.secondBinaryNumber');

  @override
  String get secondBinaryNumber {
    _$secondBinaryNumberAtom.context
        .enforceReadPolicy(_$secondBinaryNumberAtom);
    _$secondBinaryNumberAtom.reportObserved();
    return super.secondBinaryNumber;
  }

  @override
  set secondBinaryNumber(String value) {
    _$secondBinaryNumberAtom.context.conditionallyRunInAction(() {
      super.secondBinaryNumber = value;
      _$secondBinaryNumberAtom.reportChanged();
    }, _$secondBinaryNumberAtom, name: '${_$secondBinaryNumberAtom.name}_set');
  }

  final _$hintTextAtom = Atom(name: '_HomeBase.hintText');

  @override
  String get hintText {
    _$hintTextAtom.context.enforceReadPolicy(_$hintTextAtom);
    _$hintTextAtom.reportObserved();
    return super.hintText;
  }

  @override
  set hintText(String value) {
    _$hintTextAtom.context.conditionallyRunInAction(() {
      super.hintText = value;
      _$hintTextAtom.reportChanged();
    }, _$hintTextAtom, name: '${_$hintTextAtom.name}_set');
  }

  final _$resultTextAtom = Atom(name: '_HomeBase.resultText');

  @override
  String get resultText {
    _$resultTextAtom.context.enforceReadPolicy(_$resultTextAtom);
    _$resultTextAtom.reportObserved();
    return super.resultText;
  }

  @override
  set resultText(String value) {
    _$resultTextAtom.context.conditionallyRunInAction(() {
      super.resultText = value;
      _$resultTextAtom.reportChanged();
    }, _$resultTextAtom, name: '${_$resultTextAtom.name}_set');
  }

  final _$_HomeBaseActionController = ActionController(name: '_HomeBase');

  @override
  dynamic getFirstBinaryNumberValue(dynamic value) {
    final _$actionInfo = _$_HomeBaseActionController.startAction();
    try {
      return super.getFirstBinaryNumberValue(value);
    } finally {
      _$_HomeBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic getSecondBinaryNumberValue(dynamic value) {
    final _$actionInfo = _$_HomeBaseActionController.startAction();
    try {
      return super.getSecondBinaryNumberValue(value);
    } finally {
      _$_HomeBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void sum() {
    final _$actionInfo = _$_HomeBaseActionController.startAction();
    try {
      return super.sum();
    } finally {
      _$_HomeBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void subtraction() {
    final _$actionInfo = _$_HomeBaseActionController.startAction();
    try {
      return super.subtraction();
    } finally {
      _$_HomeBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void multiplication() {
    final _$actionInfo = _$_HomeBaseActionController.startAction();
    try {
      return super.multiplication();
    } finally {
      _$_HomeBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void division() {
    final _$actionInfo = _$_HomeBaseActionController.startAction();
    try {
      return super.division();
    } finally {
      _$_HomeBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void rest() {
    final _$actionInfo = _$_HomeBaseActionController.startAction();
    try {
      return super.rest();
    } finally {
      _$_HomeBaseActionController.endAction(_$actionInfo);
    }
  }
}
