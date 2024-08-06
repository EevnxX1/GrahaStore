import 'package:flutter/material.dart';
import './login_page.dart';
import './home_page.dart';
import './detail_page.dart';
import './payment_page.dart';

class chartPage extends StatefulWidget {
  const chartPage({super.key});

  @override
  State<chartPage> createState() => _chartPageState();
}

class _chartPageState extends State<chartPage> {
  int _angka1 = 1;
  int _angka2 = 1;
  int _angka3 = 1;
  void _increment1() {
    setState(() {
      _angka1 += 1;
    });
  }
  void _increment2() {
    setState(() {
      _angka2 += 1;
    });
  }
  void _increment3() {
    setState(() {
      _angka3 += 1;
    });
  }
  void _decrement1() {
    setState(() {
      _angka1 -= 1;
    });
  }
  void _decrement2() {
    setState(() {
      _angka2 -= 1;
    });
  }
  void _decrement3() {
    setState(() {
      _angka3 -= 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height; //dari layar
    final screenWidht = MediaQuery.of(context).size.width; //dari layar
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                width: screenWidht,
                height: 55,
                decoration: BoxDecoration(
                  color: Colors.black87,
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 20),
                width: screenWidht * 0.9,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'YOUR CHART',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                      ),
                    ),
                    Container(
                      width: screenWidht * 0.9,
                      margin: EdgeInsets.only(top: 20),
                      padding: EdgeInsets.symmetric(vertical: 25, horizontal: 10),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade100
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            width: screenWidht * 0.4,
                            child: Image.asset(
                              '../asset/cSepatu1.png',
                              fit: BoxFit.cover,
                              ),
                          ),
                          Container(
                            width: screenWidht * 0.4,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  child: Text(
                                    'NIKE',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 5),
                                  child: Text(
                                    'Jordan Tatum 2 pf Men\'s Basketball Shoes'
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 5),
                                  child: Text(
                                    'Rp. 350.000',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 5),
                                  width: screenWidht * 0.38,
                                  child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  'Jumlah',
                                  style: TextStyle(
                                    fontSize: 16
                                  ),
                                ),
                                InkWell(
                                  onTap: () => _decrement1(),
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 4),
                                    child: Text(
                                    '-',
                                    style: TextStyle(
                                      fontSize: 25,
                                    ),
                                  ),
                                  )
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 12),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                      width: 1,
                                      color: Colors.black54
                                    )
                                  ),
                                  child: Text(
                                    '$_angka1',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () => _increment1(),
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 4),
                                    child: Text(
                                    '+',
                                    style: TextStyle(
                                      fontSize: 20,
                                    ),
                                  ),
                                  )
                                )
                              ],
                            ),
                          ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: screenWidht * 0.9,
                      margin: EdgeInsets.only(top: 20),
                      padding: EdgeInsets.symmetric(vertical: 25, horizontal: 10),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade100
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            width: screenWidht * 0.4,
                            child: Image.asset(
                              '../asset/cSepatu2.png',
                              fit: BoxFit.cover,
                              ),
                          ),
                          Container(
                            width: screenWidht * 0.4,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  child: Text(
                                    'PUMA',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 5),
                                  child: Text(
                                    'mb.03 be you unisex basketball shoes - purple glimmer'
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 5),
                                  child: Text(
                                    'Rp. 550.000',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 5),
                                  width: screenWidht * 0.38,
                                  child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  'Jumlah',
                                  style: TextStyle(
                                    fontSize: 16
                                  ),
                                ),
                                InkWell(
                                  onTap: () => _decrement2(),
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 4),
                                    child: Text(
                                    '-',
                                    style: TextStyle(
                                      fontSize: 25,
                                    ),
                                  ),
                                  )
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 12),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                      width: 1,
                                      color: Colors.black54
                                    )
                                  ),
                                  child: Text(
                                    '$_angka2',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () => _increment2(),
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 4),
                                    child: Text(
                                    '+',
                                    style: TextStyle(
                                      fontSize: 20,
                                    ),
                                  ),
                                  )
                                )
                              ],
                            ),
                          ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: screenWidht * 0.9,
                      margin: EdgeInsets.only(top: 20),
                      padding: EdgeInsets.symmetric(vertical: 25, horizontal: 10),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade100
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            width: screenWidht * 0.4,
                            child: Image.asset(
                              '../asset/cSepatu3.png',
                              fit: BoxFit.cover,
                              ),
                          ),
                          Container(
                            width: screenWidht * 0.4,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  child: Text(
                                    'JORDAN',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 5),
                                  child: Text(
                                    '5 retro boys\' pre-school basketball shoes - army olive'
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 5),
                                  child: Text(
                                    'Rp. 750.000',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 5),
                                  width: screenWidht * 0.38,
                                  child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  'Jumlah',
                                  style: TextStyle(
                                    fontSize: 16
                                  ),
                                ),
                                InkWell(
                                  onTap: () => _decrement3(),
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 4),
                                    child: Text(
                                    '-',
                                    style: TextStyle(
                                      fontSize: 25,
                                    ),
                                  ),
                                  )
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 12),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                      width: 1,
                                      color: Colors.black54
                                    )
                                  ),
                                  child: Text(
                                    '$_angka3',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () => _increment3(),
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 4),
                                    child: Text(
                                    '+',
                                    style: TextStyle(
                                      fontSize: 20,
                                    ),
                                  ),
                                  )
                                )
                              ],
                            ),
                          ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
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
                            return homePage();
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