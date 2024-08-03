import 'package:flutter/material.dart';

class homePage extends StatelessWidget {
  const homePage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height; //dari layar
    final screenWidht = MediaQuery.of(context).size.width; //dari layar
    return Scaffold(
      body: Center(
        child: Container(
        width: screenWidht * 0.9,
        margin: EdgeInsets.only(top: 30),
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
                        color: Colors.black
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
                        color: Colors.black
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
                        color: Colors.black
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
                        color: Colors.black
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
                    Icons.refresh,
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
          ],
        ),
      ),
      )
    );
  }
}