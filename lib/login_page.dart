import 'package:flutter/material.dart';
import './home_page.dart';
class loginPage extends StatelessWidget {
  const loginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height; //dari layar
    final screenWidht = MediaQuery.of(context).size.width; //dari layar
    double responsiveForm(screen) {
      var screenHeightLogin;
      if(screen < 800) {
      screenHeightLogin = MediaQuery.of(context).size.height * 0.34;
      } else {
      screenHeightLogin = MediaQuery.of(context).size.height * 0.3;
      }
      return screenHeightLogin;
    }
    double responsiveForm2(screen) {
      var bottomPositioned;
      if(screen < 800) {
      bottomPositioned = screen * 0.05;
      } else {
      bottomPositioned = screen * 0.095;
      }
      return bottomPositioned;
    }
    return Scaffold(
      body: Container(
        height: screenHeight,
        child: Stack(
        children: <Widget>[
          Container(
            height: screenHeight * 0.45,
            child: ClipRRect(
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(50)
                ),
                child: AppBar(
              backgroundColor: Colors.black87,
              flexibleSpace: Container(
                padding: EdgeInsets.only(bottom: screenHeight * 0.1),
                child: Center(
                  child: Image.asset(
                  '../asset/logo.png',
                  fit: BoxFit.contain,
                  width: screenWidht * 0.58,
                  ),
                )
            ),
          ),
          ),
          ),
            Positioned(
              top: screenHeight * 0.26,
              child: Center(
                child: Image.asset(
                '../asset/sepatu.png',
                fit: BoxFit.contain,
                width: screenWidht * 0.95,
                ),
              )
            ),
            Positioned(
              bottom: responsiveForm2(screenHeight),
              child: Container(
                width: screenWidht,
                height: responsiveForm(screenHeight),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                  Container(
                    width: screenWidht * 0.8,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Login',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 25
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: screenWidht * 0.8,
                    child: Text(
                    'Login untuk melanjutkan transaksi atau pembelian sepatu kesayanganmu!',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  ),
                  Container(
                    width: screenWidht * 0.8,
                    child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[300],
                      labelText: 'Username',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey.shade300
                          ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                        ),
                        borderRadius: BorderRadius.circular(10)
                      ),
                    ),
                  ),
                  ),
                  Container(
                    width: screenWidht * 0.8,
                    child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[300],
                      labelText: 'Username',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey.shade300
                          ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                        ),
                        borderRadius: BorderRadius.circular(10)
                      ),
                    ),
                  ),
                  ),
                  Container(
                    width: screenWidht * 0.8,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                    Container(
                    width: 140,
                    height: 40,
                    child: TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) {
                            return homePage();
                          }
                          ),
                        );
                      },
                      child: Text('Log-in'),
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.black,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                        )
                      )
                    )
                  )
                      ],
                    ),
                  )
                ],
              ),
              )
              )
        ],
      ),
      )
    );
  }
}

              
           