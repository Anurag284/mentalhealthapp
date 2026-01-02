import 'package:flutter/material.dart';
import 'Homepage.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  // 🔐 Hard-coded credentials
  static const String correctEmail = 'admin@gmail.com';
  static const String correctPassword = '123456';

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  String errorMessage = '';
  bool isLoggedIn = false;

  void login() {
    setState(() {
      errorMessage = '';

      if (emailController.text.isEmpty || passwordController.text.isEmpty) {
        errorMessage = 'All fields are required';
      } else if (emailController.text.trim() == correctEmail &&
          passwordController.text == correctPassword) {
        isLoggedIn = true;
      } else {
        errorMessage = 'Invalid email or password';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: isLoggedIn ? Homepage() : _loginUI());
  }

  // 🔑 LOGIN UI
  Widget _loginUI() {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Login',
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 24),

          TextField(
            controller: emailController,
            decoration: const InputDecoration(
              labelText: 'Email',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 12),

          TextField(
            controller: passwordController,
            obscureText: true,
            decoration: const InputDecoration(
              labelText: 'Password',
              border: OutlineInputBorder(),
            ),
          ),

          if (errorMessage.isNotEmpty) ...[
            const SizedBox(height: 12),
            Text(errorMessage, style: const TextStyle(color: Colors.red)),
          ],

          const SizedBox(height: 24),

          SizedBox(
            width: double.infinity,
            child: ElevatedButton(onPressed: login, child: const Text('Login')),
          ),
        ],
      ),
    );
  }
}
