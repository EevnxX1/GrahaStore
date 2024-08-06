import 'package:flutter/material.dart';
import './detail_page.dart';

class paymentPage extends StatefulWidget {
  const paymentPage({super.key});

  @override
  State<paymentPage> createState() => _paymentPageState();
}

class _paymentPageState extends State<paymentPage> {
  int _angka = 1;
  void _increment() {
    setState(() {
      _angka += 1;
    });
  }
  void _decrement() {
    setState(() {
      _angka -= 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height; //dari layar
    final screenWidht = MediaQuery.of(context).size.width; //dari layar
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: screenWidht,
          margin: EdgeInsets.only(top: 40),
          padding: EdgeInsets.only(top: 30, bottom: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                width: screenWidht * 0.6,
                child: Image.asset(
                  '../asset/sepatuPrimary.png',
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30),
                height: 200,
                width: screenWidht * 0.85,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'NIKE - Jordan Tatum 2 pf Men\'s Basketball Shoes',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18
                      ),
                    ),
                    Text(
                      'For : Man',
                      style: TextStyle(
                        fontSize: 17
                      ),
                    ),
                    Container(
                      width: screenWidht * 0.85,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            width: 110,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  'Ukuran',
                                  style: TextStyle(
                                    fontSize: 17
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(vertical: 1, horizontal: 12),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                      color: Colors.black54,
                                      width: 1,
                                    ),
                                  ),
                                  child: Text(
                                    '44',
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w600
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: 150,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  'Jumlah',
                                  style: TextStyle(
                                    fontSize: 17
                                  ),
                                ),
                                InkWell(
                                  onTap: () => _decrement(),
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
                                  padding: EdgeInsets.symmetric(vertical: 1, horizontal: 12),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                      width: 1,
                                      color: Colors.black54
                                    )
                                  ),
                                  child: Text(
                                    '$_angka',
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w600
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () => _increment(),
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
                    ),
                    Container( 
                      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 18),
                      decoration: BoxDecoration(
                        color: Colors.black87
                      ),
                      child: Text(
                        'Rp. 450.000',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 35),
                width: screenWidht * 0.85,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'MASUKKAN DATA PRIBADI ANDA',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                        color: Colors.black
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 4, bottom: 20),
                      width: screenWidht * 0.85,
                      height: 4,
                      decoration: BoxDecoration(
                        color: Colors.redAccent.shade100
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 25),
                      height: 300,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        'Nama Depan',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 4),
                                        width: screenWidht * 0.4,
                                        height: 40,
                                        child: TextField(
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.black
                                          ),
                                        decoration: InputDecoration(
                                          contentPadding: EdgeInsets.symmetric(vertical: 2, horizontal: 10),
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(10),
                                            borderSide: BorderSide(
                                              color: Colors.black54
                                            )
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(10),
                                            borderSide: BorderSide(
                                              color: Colors.black54
                                            )
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(10),
                                            borderSide: BorderSide(
                                              color: Colors.black,
                                            )
                                          )
                                        ),
                                      ),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        'Nama Belakang',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 4),
                                        width: screenWidht * 0.4,
                                        height: 40,
                                        child: TextField(
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.black
                                          ),
                                        decoration: InputDecoration(
                                          contentPadding: EdgeInsets.symmetric(vertical: 2, horizontal: 10),
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(10),
                                            borderSide: BorderSide(
                                              color: Colors.black54
                                            )
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(10),
                                            borderSide: BorderSide(
                                              color: Colors.black54
                                            )
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(10),
                                            borderSide: BorderSide(
                                              color: Colors.black,
                                            )
                                          )
                                        ),
                                      ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        'Alamat',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 4),
                                        width: screenWidht * 0.85,
                                        height: 40,
                                        child: TextField(
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.black
                                          ),
                                        decoration: InputDecoration(
                                          contentPadding: EdgeInsets.symmetric(vertical: 2, horizontal: 10),
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(10),
                                            borderSide: BorderSide(
                                              color: Colors.black54
                                            )
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(10),
                                            borderSide: BorderSide(
                                              color: Colors.black54
                                            )
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(10),
                                            borderSide: BorderSide(
                                              color: Colors.black,
                                            )
                                          )
                                        ),
                                      ),
                                      ),
                                    ],
                                  ),
                                ),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        'Kota',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 4),
                                        width: screenWidht * 0.4,
                                        height: 40,
                                        child: TextField(
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.black
                                          ),
                                        decoration: InputDecoration(
                                          contentPadding: EdgeInsets.symmetric(vertical: 2, horizontal: 10),
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(10),
                                            borderSide: BorderSide(
                                              color: Colors.black54
                                            )
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(10),
                                            borderSide: BorderSide(
                                              color: Colors.black54
                                            )
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(10),
                                            borderSide: BorderSide(
                                              color: Colors.black,
                                            )
                                          )
                                        ),
                                      ),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        'Kecamatan',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 4),
                                        width: screenWidht * 0.4,
                                        height: 40,
                                        child: TextField(
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.black
                                          ),
                                        decoration: InputDecoration(
                                          contentPadding: EdgeInsets.symmetric(vertical: 2, horizontal: 10),
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(10),
                                            borderSide: BorderSide(
                                              color: Colors.black54
                                            )
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(10),
                                            borderSide: BorderSide(
                                              color: Colors.black54
                                            )
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(10),
                                            borderSide: BorderSide(
                                              color: Colors.black,
                                            )
                                          )
                                        ),
                                      ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        'Kode Pos',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 4),
                                        width: screenWidht * 0.4,
                                        height: 40,
                                        child: TextField(
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.black
                                          ),
                                        decoration: InputDecoration(
                                          contentPadding: EdgeInsets.symmetric(vertical: 2, horizontal: 10),
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(10),
                                            borderSide: BorderSide(
                                              color: Colors.black54
                                            )
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(10),
                                            borderSide: BorderSide(
                                              color: Colors.black54
                                            )
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(10),
                                            borderSide: BorderSide(
                                              color: Colors.black,
                                            )
                                          )
                                        ),
                                      ),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        'Nomor Telepon',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 4),
                                        width: screenWidht * 0.4,
                                        height: 40,
                                        child: TextField(
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.black
                                          ),
                                        decoration: InputDecoration(
                                          contentPadding: EdgeInsets.symmetric(vertical: 2, horizontal: 10),
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(10),
                                            borderSide: BorderSide(
                                              color: Colors.black54
                                            )
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(10),
                                            borderSide: BorderSide(
                                              color: Colors.black54
                                            )
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(10),
                                            borderSide: BorderSide(
                                              color: Colors.black,
                                            )
                                          )
                                        ),
                                      ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                            onTap: () {},
                            child: Container(
                              padding: EdgeInsets.symmetric(vertical: 8),
                              width: screenWidht * 0.4,
                              decoration: BoxDecoration(
                                color: Colors.black87,
                              ),
                              child: Text(
                                'Beli Sekarang',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 19
                                ),
                              ),
                            ),
                          )
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
                Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) {
                            return detailPage();
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
                Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) {
                            return detailPage();
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
                Navigator.of(context).push(MaterialPageRoute(
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
                Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) {
                            return detailPage();
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