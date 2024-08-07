import 'package:flutter/material.dart';
import './login_page.dart';

class animatePage extends StatefulWidget {
  const animatePage({super.key});

  @override
  State<animatePage> createState() => _animatePageState();
}

class _animatePageState extends State<animatePage> {
  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 5), () {
      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) {
                            return loginPage();
                          }
                          ),
                        );
    });
  }
  Widget build(BuildContext context) {
    final screenWidht = MediaQuery.of(context).size.width; //dari layar
    final screenHeight = MediaQuery.of(context).size.height; //dari layar
    return Scaffold(
      body: Center(
        child: Container(
          height: screenHeight,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          Container(
            margin: EdgeInsets.only(bottom: 40),
          width: screenWidht * 0.65,
          child: Image.asset(
          '../asset/logoUtama.png',
          fit: BoxFit.contain,
          ),
        ),
        CircularProgressIndicator(
          color: Colors.black87,
        )
          ],
        ),
        )
      ),
    );
  }
}