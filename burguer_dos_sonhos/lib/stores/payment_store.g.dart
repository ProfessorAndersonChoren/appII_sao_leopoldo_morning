// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$PaymentStore on PaymentStoreBase, Store {
  late final _$selectedAtom =
      Atom(name: 'PaymentStoreBase.selected', context: context);

  @override
  Payment get selected {
    _$selectedAtom.reportRead();
    return super.selected;
  }

  @override
  set selected(Payment value) {
    _$selectedAtom.reportWrite(value, super.selected, () {
      super.selected = value;
    });
  }

  late final _$PaymentStoreBaseActionController =
      ActionController(name: 'PaymentStoreBase', context: context);

  @override
  void changePaymentMethod(Payment payment) {
    final _$actionInfo = _$PaymentStoreBaseActionController.startAction(
        name: 'PaymentStoreBase.changePaymentMethod');
    try {
      return super.changePaymentMethod(payment);
    } finally {
      _$PaymentStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
selected: ${selected}
    ''';
  }
}
