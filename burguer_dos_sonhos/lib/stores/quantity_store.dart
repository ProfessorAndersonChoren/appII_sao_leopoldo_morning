import 'package:mobx/mobx.dart';

part 'quantity_store.g.dart';

class QuantityStore = QuantityStoreBase with _$QuantityStore;

abstract class QuantityStoreBase with Store {
  @observable
  int _value = 1;

  String get value => _value.toString();

  @action
  void increment() => _value++;

  @action
  void decrement() => _value--;

  bool isActive() => _value > 1;
}
