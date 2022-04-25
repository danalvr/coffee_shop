import 'package:flutter/material.dart';
import 'package:coffee_shop/view/components/coffeePage.dart';
import 'package:coffee_shop/view/components/nonCoffeePage.dart';
import 'package:coffee_shop/view/components/snackPage.dart';


var informationTextStyle = TextStyle(fontFamily: 'Oxygen');

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Container(
                      height: height * 0.33,
                      width: width,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/images/header.jpg"),
                              fit: BoxFit.cover)),
                      child: Container(
                        decoration: BoxDecoration(
                            gradient: LinearGradient(colors: [
                              Colors.black.withOpacity(0.0),
                              Colors.black.withOpacity(0.0),
                              Colors.black.withOpacity(0.1),
                              Colors.black.withOpacity(0.5),
                              Colors.black.withOpacity(1.0),
                            ], begin: Alignment.topRight, end: Alignment.bottomLeft)),
                      ),
                    ),
                    Positioned(
                      right: 20,
                      bottom: 175,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                color: Color(0xff1b2027),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Icon(
                                Icons.menu,
                                color: Color(0xff4d4f52),
                              )),
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 106,
                      left: 24,
                      child: RichText(
                        text: TextSpan(
                            text: "makes your ",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 22,
                            ),
                            children: [
                              TextSpan(
                                  text: "Story \nWith Coffee",
                                  style: TextStyle(
                                    color: Colors.brown[300],
                                    fontWeight: FontWeight.w500,
                                    fontSize: 26,
                                    fontFamily: 'Ubuntu'
                                  ))
                            ]),
                      ),
                    )
                  ],
                ),
                // Image.asset('assets/images/header.jpg'),
                Transform.translate(
                  offset: Offset(0.0, -(height * 0.3 - height * 0.26)),
                  child: Container(
                    width: width,
                    padding: EdgeInsets.only(top: 10),
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30))),
                    child: DefaultTabController(
                        length: 3,
                        child: Column(
                          children: <Widget>[
                            TabBar(
                              labelColor: Color(0xffd17842),
                              labelStyle: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                              unselectedLabelColor: Color(0xff3c4046),
                              unselectedLabelStyle: TextStyle(
                                  fontWeight: FontWeight.normal, fontSize: 17),
                              indicatorSize: TabBarIndicatorSize.label,
                              indicatorColor: Colors.transparent,
                              tabs: <Widget>[
                                Tab(
                                  child: Text("Coffee"),
                                ),
                                Tab(
                                  child: Text("Non-Coffee"),
                                ),
                                Tab(
                                  child: Text("Snack"),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 20, right: 20),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Color(0xff141921),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: TextField(
                                  style: TextStyle(color: Color(0xff3c4046)),
                                  decoration: InputDecoration(
                                      hintText: "Cari...",
                                      hintStyle: TextStyle(color: Color(0xff3c4046)),
                                      border: InputBorder.none,
                                      prefixIcon: Icon(
                                        Icons.search,
                                        color: Colors.grey[600],
                                      )),
                                ),
                              ),
                            ),
                            Container(
                              height: height * 0.6,
                              child: TabBarView(
                                children: <Widget>[
                                  CoffeePage(),
                                  NonCoffeePage(),
                                  SnackPage(),
                                ],
                              ),
                            )
                          ],
                        )),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}