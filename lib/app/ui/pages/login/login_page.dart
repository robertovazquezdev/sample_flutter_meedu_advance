import 'package:flutter/material.dart';
import 'package:sample_flutter_meedu_advance/app/ui/pages/login/controller/login_provider.dart';
import 'package:sample_flutter_meedu_advance/app/ui/pages/login/utils/send_login_form.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = loginProvider.read;
    return Scaffold(
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Container(
            color: Colors.transparent,
            width: double.infinity,
            height: double.infinity,
            child: Form(
              key: controller.formKey,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        label: Text('email'),
                      ),
                      onChanged: controller.onEmailChanged,
                      validator: (text) {
                        final email = text ?? '';
                        if (email.contains('@')) {
                          return null;
                        }
                        return 'Invalid email';
                      },
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        label: Text('passsword'),
                      ),
                      onChanged: controller.onPasswordChanged,
                      validator: (text) {
                        final password = text ?? '';
                        if (password.replaceAll(' ', '').length >= 6) {
                          return null;
                        }
                        return 'Invalid password';
                      },
                    ),
                    const SizedBox(height: 30),
                    ElevatedButton(
                      onPressed: () => sendLoginForm(context),
                      child: const Text('SEND'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
