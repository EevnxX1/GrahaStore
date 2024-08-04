import 'package:flutter/material.dart';

class detailPage extends StatefulWidget {
  const detailPage({super.key});

  @override
  State<detailPage> createState() => _detailPageState();
}

class _detailPageState extends State<detailPage> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height; //dari layar
    final screenWidht = MediaQuery.of(context).size.width; //dari layar
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 30),
        width: screenWidht,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              width: screenWidht,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.black,
              ),
              child: Center(
                child: Text(
                  'NEW ARRIVAL',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 17
                  ),
                  ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(15),
              width: screenWidht * 0.9,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(15)
              ),
              margin: EdgeInsets.only(top: 15),
              child: Row(
                children: <Widget>[
                  Container(
                    height: 280,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 8),
                          decoration: BoxDecoration(
                            color: Colors.grey.shade100,
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: Image.asset(
                            '../asset/dSepatu1.png',
                            fit: BoxFit.cover,
                            width: 65,
                            ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 8),
                          decoration: BoxDecoration(
                            color: Colors.grey.shade100,
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: Image.asset(
                            '../asset/dSepatu2.png',
                            fit: BoxFit.cover,
                            width: 65,
                            ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 8),
                          decoration: BoxDecoration(
                            color: Colors.grey.shade100,
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: Image.asset(
                            '../asset/dSepatu3.png',
                            fit: BoxFit.cover,
                            width: 65,
                            ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 8),
                          decoration: BoxDecoration(
                            color: Colors.grey.shade100,
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: Image.asset(
                            '../asset/dSepatu4.png',
                            fit: BoxFit.cover,
                            width: 65,
                            ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Image.asset(
                      '../asset/sepatuPrimary.png',
                      fit: BoxFit.cover,
                      width: screenWidht * 0.55,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}