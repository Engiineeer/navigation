import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({required this.name, super.key});

  final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("welcome $name")),
    );
  }
}
