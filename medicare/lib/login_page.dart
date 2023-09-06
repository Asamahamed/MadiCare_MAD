import 'package:flutter/material.dart';
import 'package:medicare/text_buttons/main_text_button.dart';
import 'recovery_page.dart';
import 'signup_page.dart';
import 'package:medicare/constants/colors.dart';
import 'package:medicare/text_buttons/username_pass.dart'; // Corrected import statement

class Login extends StatelessWidget {
  const Login({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              const UsernamePasswordInput(
                hintText: 'Username',
              ),

              const SizedBox(height: 16),

              const UsernamePasswordInput(
                hintText: 'Password',
                obscureText: true,
              ),

              const SizedBox(height: 24), // Spacing

              MainTextButton(text: 'Login', onPressed: () {}),

              const SizedBox(height: 16), // Spacing

              // Password recovery button
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PasswordRecoveryPage(),
                    ),
                  );
                },
                child: const Text(
                  'Forgot Password?',
                  style: TextStyle(
                    color: mainColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),

              const SizedBox(height: 10), // Spacing

              // Don't have an account? sign up
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SignUpPage(),
                    ),
                  );
                },
                child: const Text(
                  "Don't have an account? Sign Up",
                  style: TextStyle(
                    color: mainColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
