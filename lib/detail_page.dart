import 'package:flutter/material.dart';
import './login_page.dart';
import './home_page.dart';
import './payment_page.dart';
import './chart_page.dart';

class detailPage extends StatefulWidget {

  @override
  State<detailPage> createState() => _detailPageState();
}

class _detailPageState extends State<detailPage> {
  List <bool> isSelected = [false, false, false, false, false, false];
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height; //dari layar
    final screenWidht = MediaQuery.of(context).size.width; //dari layar
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
        padding: EdgeInsets.symmetric(vertical: 30),
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
            ),
            Container(
              height: 200,
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              margin: EdgeInsets.only(top: 10),
              width: screenWidht * 0.9,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(15)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'NIKE - Jordan Tatum 2 pf Men\'s Basketball Shoes',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    'For : Man',
                    style: TextStyle(
                      fontSize: 16
                    ),
                  ),
                  Text(
                    'Rp. 450.000',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Text(
                    'Ukuran :',
                    style: TextStyle(
                      fontSize: 16
                    ),
                  ),
                  Container(
                    height: 30,
                    child: ToggleButtons(
                      isSelected: isSelected,
                      selectedColor: Colors.white,
                      fillColor: Colors.black,
                      renderBorder: true,
                      borderColor: Colors.black54,
                      borderWidth: 2,
                      constraints: BoxConstraints.expand(width: 50, height: 30),
                      borderRadius: BorderRadius.circular(8),
                      textStyle: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600
                      ),
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(right: 5),
                          child: Center(
                            child: Text(
                            '39',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 15
                            ),
                          ),
                          )
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 5),
                          child: Center(
                            child: Text(
                            '40',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 15
                            ),
                          ),
                          )
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 5),
                          child: Center(
                            child: Text(
                            '41',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 15
                            ),
                          ),
                          )
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 5),
                          child: Center(
                            child: Text(
                            '42',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 15
                            ),
                          ),
                          )
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 5),
                          child: Center(
                            child: Text(
                            '43',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 15
                            ),
                          ),
                          )
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 5),
                          child: Center(
                            child: Text(
                            '44',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 15
                            ),
                          ),
                          )
                        ),
                      ], 
                      onPressed: (int index) {
                        setState(() {
                          for (int i = 0; i < isSelected.length; i++) {
                            isSelected[i] = i == index;
                          }
                        });
                      },
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: screenWidht * 0.9,
              margin: EdgeInsets.only(top: 10),
              child: Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(right: 7),
                  child: InkWell(
                  
                  onTap: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) {
                            return paymentPage();
                          }
                          ),
                        );
                  },
                  child: Container(
                    width: 125,
                    padding: EdgeInsets.symmetric(vertical: 9),
                    decoration: BoxDecoration(
                      color: Colors.black87
                    ),
                    child: Text(
                      'Beli Sekarang',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16
                      ),
                    ),
                  ),
                ),
                ),
                Container(
                  child: InkWell(
                  
                  onTap: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) {
                            return chartPage();
                          }
                          ),
                        );
                  },
                  child: Container(
                    width: 180,
                    padding: EdgeInsets.symmetric(vertical: 9),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.black87,
                        width: 2
                      ),
                    ),
                    child: Text(
                      'Masukkan Keranjang',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16
                      ),
                    ),
                  ),
                ),
                ),
              ],
            ),
            ),
            Container(
              height: 318,
              padding: EdgeInsets.all(18),
              margin: EdgeInsets.only(top: 10),
              width: screenWidht * 0.9,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(15)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Detail',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16
                    ),
                  ),
                  Container(
                    width: 80,
                    height: 5,
                    decoration: BoxDecoration(
                      color: Colors.redAccent.shade100
                    ),
                  ),
                  Container(
                    child: Text(
                      textAlign: TextAlign.justify,
                      "Tampil dengan style street-smart menggunakan sepatu adidas Gazelle. Diperkenalkan pada tahun 1966 sebagai sepatu olahraga, Gazelle telah teruji dari waktu ke waktu. Kini berperan sebagai ikon berkarakter, menemanimu dari tempat kerja ke akhir pekan tanpa kehilangan ritme. Upper berbahan suede dan outsole karet berpadu untuk menghasilkan tampilan vintage dengan kenyamanan masa kini. Setelah dipakai oleh para atlet, kini dipakai oleh semua orang, Gazelle terus menjadi pusat perhatian selama beberapa dekade setelah debutnya.",
                      style: TextStyle(
                      ),
                    ),
                  )
                ],
              ),
            )
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