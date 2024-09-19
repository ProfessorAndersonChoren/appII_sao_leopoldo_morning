import 'package:flutter/material.dart';
import 'package:login_and_register/screens/shared/custom_text_field.dart';
import 'package:email_validator/email_validator.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registre-se'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomTextField(
                controller: _emailController,
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
                controller: _passwordController,
                label: 'Senha',
                inputType: TextInputType.visiblePassword,
                isPassword: true,
                validator: (value) {
                  if (value == null || value.length < 8) {
                    return 'Sua senha é inválida!!!';
                  }
                  return null;
                },
              ),
              CustomTextField(
                label: 'Repita sua senha',
                inputType: TextInputType.emailAddress,
                textInputAction: TextInputAction.done,
                isPassword: true,
                validator: (value) {
                  if (value == null || value.length < 8) {
                    return 'Sua senha é inválida!!!';
                  } else if (_passwordController.text != value) {
                    return 'As senha não coincidem!!!';
                  }
                  return null; // Tudo OK
                },
              ),
              FilledButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // TODO Fazer o cadastro
                  }
                },
                child: const Text('Registrar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
