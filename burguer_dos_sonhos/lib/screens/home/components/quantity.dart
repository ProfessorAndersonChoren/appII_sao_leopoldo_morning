import 'package:burguer_dos_sonhos/stores/quantity_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class Quantity extends StatelessWidget {
  final quantityStore = QuantityStore();
  Quantity({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Observer(builder: (_) {
          return TextButton(
            onPressed: (quantityStore.isActive())
                ? () {
                    quantityStore.decrement();
                  }
                : null,
            child: Text(
              '-',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
          );
        }),
        Observer(builder: (_) {
          return Text(
            quantityStore.value,
            style: Theme.of(context).textTheme.headlineLarge,
          );
        }),
        TextButton(
          onPressed: () {
            quantityStore.increment();
          },
          child: Text(
            '+',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
        ),
      ],
    );
  }
}
