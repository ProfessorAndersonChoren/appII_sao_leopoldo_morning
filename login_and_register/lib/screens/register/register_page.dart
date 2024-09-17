import 'package:flutter/material.dart';
import 'package:login_and_register/screens/shared/custom_text_field.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registre-se'),
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
          ],
        ),
      ),
    );
  }
}
