import 'package:flutter/material.dart';
import './login_page.dart';

class animatePage extends StatelessWidget {
  const animatePage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidht = MediaQuery.of(context).size.width; //dari layar
    return Scaffold(
      body: Center(
        child: Container(
          width: screenWidht * 0.65,
          child: Image.asset(
          '../asset/logoUtama.png',
          fit: BoxFit.contain,
          ),
        )
      ),
    );
  }
}