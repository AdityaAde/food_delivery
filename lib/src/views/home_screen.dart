import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage("assets/images/pattern.png"))),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Container(
                margin: EdgeInsets.only(top: 100, left: 20, right: 20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Find Your \nFavorite Food",
                          style: TextStyle(
                              fontSize: 31, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(width: 10),
                        Card(
                          child: IconButton(
                              icon: Icon(
                                Icons.notifications_outlined,
                                color: Colors.green,
                              ),
                              onPressed: () {}),
                        )
                      ],
                    ),
                    SizedBox(height: 20),
                    Card(
                      color: Colors.red[50],
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      child: TextField(
                        cursorColor: Colors.black,
                        decoration: new InputDecoration(
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.red[200],
                          ),
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          contentPadding: EdgeInsets.only(
                              left: 15, bottom: 11, top: 11, right: 15),
                          hintText: "What do you want to order?",
                          hintStyle: TextStyle(color: Colors.red[200]),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      width: 325,
                      height: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10)),
                      margin: EdgeInsets.only(
                          bottom: MediaQuery.of(context).size.height / 2 - 100),
                      child: Image.asset(
                        'assets/images/promo.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.height,
              child: Container(
                padding: EdgeInsets.only(left: 15, right: 15),
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 2 + 70,
                    left: 20,
                    right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Nearest Restaurant",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        Text("View More",
                            style: TextStyle(
                                color: Colors.red[200],
                                fontSize: 12,
                                fontWeight: FontWeight.bold))
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
