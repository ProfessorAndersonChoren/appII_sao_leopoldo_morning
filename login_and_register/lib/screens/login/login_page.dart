import 'package:flutter/material.dart';
import 'package:login_and_register/screens/shared/custom_text_field.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Seja Bem-vindo'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomTextField(
              label: 'Email',
              inputType: TextInputType.emailAddress,
            ),
            CustomTextField(
              label: 'Senha',
              inputType: TextInputType.visiblePassword,
              isPassword: true,
              textInputAction: TextInputAction.done,
            ),
            FilledButton(
              onPressed: () {},
              child: const Text('Entrar'),
            ),
            FilledButton(
              onPressed: () {
                Navigator.pushNamed(context, '/register');
              },
              child: const Text('Registre-se'),
              style: FilledButton.styleFrom(
                backgroundColor: Theme.of(context).colorScheme.tertiary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
