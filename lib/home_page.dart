import 'package:flutter/material.dart';
import './login_page.dart';
import './detail_page.dart';
import './payment_page.dart';
import './chart_page.dart';

class homePage extends StatelessWidget {
  const homePage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidht = MediaQuery.of(context).size.width; //dari layar
    final screenHeight = MediaQuery.of(context).size.height; //dari layar
    double responsive1(screen) {
      var screenWidth1;
      if(screen < 400) {
      screenWidth1 = MediaQuery.of(context).size.width * 0.032;
      } else {
      screenWidth1 = MediaQuery.of(context).size.width * 0.036;
      }
      return screenWidth1;
    }
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
        child: Container(
        width: screenWidht * 0.9,
        margin: EdgeInsets.only(top: 30, bottom: 20),
        child: Column(
          children: <Widget>[
            Container(
              height: 62,
              padding: EdgeInsets.only(left: 20, right: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.black
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    width: 132,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: Image.asset(
                            '../asset/people.png',
                            fit: BoxFit.contain,
                            ),
                        ),
                        Text(
                          'Hello, Anwar',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: IconButton(
                      onPressed: () {}, 
                      icon: Icon(
                        Icons.notifications,
                        color: Colors.white,
                        ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.black,
                      width: 1,
                    )
                  ),
                  child: TextButton(
                    onPressed: () {
                      
                    },
                    child: Text(
                      'All',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                        fontSize: responsive1(screenWidht)
                      ),
                      ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.black,
                      width: 1,
                    )
                  ),
                  child: TextButton(
                    onPressed: () {
                      
                    },
                    child: Text(
                      'Nike Air Jordan',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                        fontSize: responsive1(screenWidht)
                      ),
                      ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.black,
                      width: 1,
                    )
                  ),
                  child: TextButton(
                    onPressed: () {
                      
                    },
                    child: Text(
                      'Puma',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                        fontSize: responsive1(screenWidht)
                      ),
                      ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.black,
                      width: 1,
                    )
                  ),
                  child: TextButton(
                    onPressed: () {
                      
                    },
                    child: Text(
                      'Nike Air Force',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                        fontSize: responsive1(screenWidht)
                      ),
                      ),
                  ),
                ),
              ],
            ),
            ),
            Container(
              padding: EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.black,
              ),
              margin: EdgeInsets.only(top: 8),
              child: TextField(
                decoration: InputDecoration(
                  suffixIcon: Icon(
                    Icons.search_rounded,
                    size: 30,
                    ),
                  contentPadding: EdgeInsets.only(left: 20, right: 20),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(18),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'Search \'Nike Air Force\'',
                  hintStyle: TextStyle(
                    fontSize: 15,
                    color: Colors.grey.shade400
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(18)
                  )
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 8),
              child: Image.asset(
                '../asset/presale.png',
                fit: BoxFit.contain,
                width: screenWidht * 0.9,
                ),
            ),
            Container(
              margin: EdgeInsets.only(top: 8),
              child: Wrap(
                direction: Axis.horizontal,
                spacing: 10,
                runSpacing: 10,
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) {
                            return detailPage();
                          }
                          ),
                        );
                    },
                    child: Container(
                    padding: EdgeInsets.only(bottom: 8),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(20)
                    ),
                    width: (screenWidht * 0.9) * 0.47,
                    child: Column(
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                          ),
                          child: Image.asset(
                            '../asset/sepatu1.png',
                            fit: BoxFit.contain,
                            width: (screenWidht * 0.9) * 0.47,
                            ),
                        ),
                        Container(
                          width: (screenWidht * 0.9) * 0.47,
                          padding: EdgeInsets.only(top: 3, bottom: 3),
                          decoration: BoxDecoration(
                            color: Colors.redAccent.shade100
                          ),
                          child: Text(
                            'NEW ARRIVAL',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 13
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 8),
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'NIKE - ',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold
                                  )
                                ),
                                TextSpan(
                                  text: 'Jordan Tatum 2 pf Men\'s Basketball Shoes',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12
                                  )
                                )
                              ]
                            )
                          )
                        )
                      ],
                    ),
                  ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) {
                            return detailPage();
                          }
                          ),
                        );
                    },
                    child: Container(
                    padding: EdgeInsets.only(bottom: 8),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(20)
                    ),
                    width: (screenWidht * 0.9) * 0.47,
                    child: Column(
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                          ),
                          child: Image.asset(
                            '../asset/sepatu2.png',
                            fit: BoxFit.contain,
                            width: (screenWidht * 0.9) * 0.47,
                            ),
                        ),
                        Container(
                          width: (screenWidht * 0.9) * 0.47,
                          padding: EdgeInsets.only(top: 3, bottom: 3),
                          decoration: BoxDecoration(
                            color: Colors.redAccent.shade100
                          ),
                          child: Text(
                            'NEW ARRIVAL',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 13
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 8),
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'NIKE - ',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold
                                  )
                                ),
                                TextSpan(
                                  text: 'Jordan Tatum 2 pf Men\'s Basketball Shoes',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12
                                  )
                                )
                              ]
                            )
                          )
                        )
                      ],
                    ),
                  ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) {
                            return detailPage();
                          }
                          ),
                        );
                    },
                    child: Container(
                    padding: EdgeInsets.only(bottom: 8),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(20)
                    ),
                    width: (screenWidht * 0.9) * 0.47,
                    child: Column(
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                          ),
                          child: Image.asset(
                            '../asset/sepatu3.png',
                            fit: BoxFit.contain,
                            width: (screenWidht * 0.9) * 0.47,
                            ),
                        ),
                        Container(
                          width: (screenWidht * 0.9) * 0.47,
                          padding: EdgeInsets.only(top: 3, bottom: 3),
                          decoration: BoxDecoration(
                            color: Colors.redAccent.shade100
                          ),
                          child: Text(
                            'NEW ARRIVAL',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 13
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 8),
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'NIKE - ',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold
                                  )
                                ),
                                TextSpan(
                                  text: 'Jordan Tatum 2 pf Men\'s Basketball Shoes',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12
                                  )
                                )
                              ]
                            )
                          )
                        )
                      ],
                    ),
                  ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) {
                            return detailPage();
                          }
                          ),
                        );
                    },
                    child: Container(
                    padding: EdgeInsets.only(bottom: 8),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(20)
                    ),
                    width: (screenWidht * 0.9) * 0.47,
                    child: Column(
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                          ),
                          child: Image.asset(
                            '../asset/sepatu4.png',
                            fit: BoxFit.contain,
                            width: (screenWidht * 0.9) * 0.47,
                            ),
                        ),
                        Container(
                          width: (screenWidht * 0.9) * 0.47,
                          padding: EdgeInsets.only(top: 3, bottom: 3),
                          decoration: BoxDecoration(
                            color: Colors.redAccent.shade100
                          ),
                          child: Text(
                            'NEW ARRIVAL',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 13
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 8),
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'NIKE - ',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold
                                  )
                                ),
                                TextSpan(
                                  text: 'Jordan Tatum 2 pf Men\'s Basketball Shoes',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12
                                  )
                                )
                              ]
                            )
                          )
                        )
                      ],
                    ),
                  ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) {
                            return detailPage();
                          }
                          ),
                        );
                    },
                    child: Container(
                    padding: EdgeInsets.only(bottom: 8),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(20)
                    ),
                    width: (screenWidht * 0.9) * 0.47,
                    child: Column(
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                          ),
                          child: Image.asset(
                            '../asset/sepatu5.png',
                            fit: BoxFit.contain,
                            width: (screenWidht * 0.9) * 0.47,
                            ),
                        ),
                        Container(
                          width: (screenWidht * 0.9) * 0.47,
                          padding: EdgeInsets.only(top: 3, bottom: 3),
                          decoration: BoxDecoration(
                            color: Colors.redAccent.shade100
                          ),
                          child: Text(
                            'NEW ARRIVAL',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 13
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 8),
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'NIKE - ',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold
                                  )
                                ),
                                TextSpan(
                                  text: 'Jordan Tatum 2 pf Men\'s Basketball Shoes',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12
                                  )
                                )
                              ]
                            )
                          )
                        )
                      ],
                    ),
                  ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) {
                            return detailPage();
                          }
                          ),
                        );
                    },
                    child: Container(
                    padding: EdgeInsets.only(bottom: 8),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(20)
                    ),
                    width: (screenWidht * 0.9) * 0.47,
                    child: Column(
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                          ),
                          child: Image.asset(
                            '../asset/sepatu6.png',
                            fit: BoxFit.contain,
                            width: (screenWidht * 0.9) * 0.47,
                            ),
                        ),
                        Container(
                          width: (screenWidht * 0.9) * 0.47,
                          padding: EdgeInsets.only(top: 3, bottom: 3),
                          decoration: BoxDecoration(
                            color: Colors.redAccent.shade100
                          ),
                          child: Text(
                            'NEW ARRIVAL',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 13
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 8),
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'NIKE - ',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold
                                  )
                                ),
                                TextSpan(
                                  text: 'Jordan Tatum 2 pf Men\'s Basketball Shoes',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12
                                  )
                                )
                              ]
                            )
                          )
                        ),

                      ],
                    ),
                  ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      ),
      ),
      bottomNavigationBar: Container(
        height: 65,
        padding: EdgeInsets.symmetric(horizontal: 40),
        decoration: BoxDecoration(
          color: Colors.black87,
          borderRadius: BorderRadius.vertical(top: Radius.circular(20))
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            InkWell(
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) {
                            return paymentPage();
                          }
                          ),
                        );
              },
              child: Container(
                width: 36,
                child: Image.asset(
                  '../asset/Home_fill.png',
                  fit: BoxFit.contain,
                  ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) {
                            return chartPage();
                          }
                          ),
                        );
              },
              child: Container(
                width: 32,
                child: Image.asset(
                  '../asset/Bag_fill.png',
                  fit: BoxFit.contain,
                  ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) {
                            return detailPage();
                          }
                          ),
                        );
              },
              child: Container(
                width: 32,
                child: Image.asset(
                  '../asset/Bookmark_fill.png',
                  fit: BoxFit.contain,
                  ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) {
                            return loginPage();
                          }
                          ),
                        );
              },
              child: Container(
                width: 32,
                child: Image.asset(
                  '../asset/User_fill.png',
                  fit: BoxFit.contain,
                  ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}