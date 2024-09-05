// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quantity_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$QuantityStore on QuantityStoreBase, Store {
  late final _$_valueAtom =
      Atom(name: 'QuantityStoreBase._value', context: context);

  @override
  int get _value {
    _$_valueAtom.reportRead();
    return super._value;
  }

  @override
  set _value(int value) {
    _$_valueAtom.reportWrite(value, super._value, () {
      super._value = value;
    });
  }

  late final _$QuantityStoreBaseActionController =
      ActionController(name: 'QuantityStoreBase', context: context);

  @override
  void increment() {
    final _$actionInfo = _$QuantityStoreBaseActionController.startAction(
        name: 'QuantityStoreBase.increment');
    try {
      return super.increment();
    } finally {
      _$QuantityStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void decrement() {
    final _$actionInfo = _$QuantityStoreBaseActionController.startAction(
        name: 'QuantityStoreBase.decrement');
    try {
      return super.decrement();
    } finally {
      _$QuantityStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''

    ''';
  }
}
