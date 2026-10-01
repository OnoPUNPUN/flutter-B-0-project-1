import 'package:flutter/material.dart';

class WelcomPage extends StatefulWidget {
  static const name = "/welcome-page";
  const WelcomPage({super.key});

  @override
  State<WelcomPage> createState() => _WelcomPageState();
}

class _WelcomPageState extends State<WelcomPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text("Welcome page")));
  }
}
