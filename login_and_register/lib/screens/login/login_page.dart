import 'package:flutter/material.dart';
import 'package:login_and_register/screens/shared/custom_text_field.dart';
import 'package:email_validator/email_validator.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Seja Bem-vindo'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomTextField(
                label: 'Email',
                inputType: TextInputType.emailAddress,
                validator: (value) {
                  if (value == null || !EmailValidator.validate(value)) {
                    return 'Seu email é inválido!!!';
                  }
                  return null;
                },
              ),
              CustomTextField(
                label: 'Senha',
                inputType: TextInputType.visiblePassword,
                isPassword: true,
                textInputAction: TextInputAction.done,
                validator: (value) {
                  if (value == null || value.length < 8) {
                    return 'Sua senha é inválida!!!';
                  }
                  return null;
                },
              ),
              FilledButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // TODO Logar usuário
                  }
                },
                child: const Text('Entrar'),
              ),
              const SizedBox(height: 16),
              FilledButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/register');
                },
                style: FilledButton.styleFrom(
                  backgroundColor: Theme.of(context).colorScheme.tertiary,
                ),
                child: const Text('Registre-se'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
