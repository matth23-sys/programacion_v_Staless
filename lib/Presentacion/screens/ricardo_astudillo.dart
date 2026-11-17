import 'package:flutter/material.dart';

class RicardoAstudillo extends StatelessWidget {
  const RicardoAstudillo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Ricardo Astudillo',
          style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}