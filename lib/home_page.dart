import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final nameController = TextEditingController();
  final PasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Title(
            color: Colors.red,
            child: Center(
                child: Text(
              "sign in",
              style: TextStyle(fontSize: 30),
            ))),
      ),
      body: Column(
        children: [
          TextField(
            controller: nameController,
            decoration: InputDecoration(labelText: "Username"),
          ),
          TextField(
            controller: PasswordController,
            decoration: InputDecoration(labelText: "Password"),
          ),
          ElevatedButton(
              onPressed: (() {
                if (PasswordController.text == "12345") {
                  print("success");
                  context.push("/signin", extra: nameController.text);
                } else {
                  print("fail");
                }
              }),
              child: Text("Signin"))
        ],
      ),
    );
  }
}
