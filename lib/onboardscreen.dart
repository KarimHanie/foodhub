import 'package:flutter/material.dart';
import 'package:foodhub/Route/routes.dart';

class OnBoardScreen extends StatefulWidget {
  const OnBoardScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardScreen> createState() => _OnBoardScreenState();
}

class _OnBoardScreenState extends State<OnBoardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            SizedBox(
              height: 86,
            ),
            Stack(
              alignment: Alignment.center,
              clipBehavior: Clip.none,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 33, left: 33),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 310,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      // borderRadius: BorderRadius.circular(150),
                      border: Border.all(color: Color(0xff2DBC48), width: 1),
                    ),
                    clipBehavior: Clip.none,
                    child: Padding(
                      padding: EdgeInsets.only(
                        right: 42,
                        left: 42,
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.grey.shade300),
                      ),
                    ),
                  ),
                ),
                // middle picture
                Positioned(
                  top: -25,
                  child: Padding(
                    padding: EdgeInsets.only(left: 42, right: 42),
                    child: Container(
                      width: 226,
                      height: 302,
                      decoration: BoxDecoration(
                        // color: Colors.yellow.shade300,
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(150),
                            bottomLeft: Radius.circular(150)),
                        image: DecorationImage(
                          image: AssetImage(
                            "assets/images/onboarding_1.png",
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                //jimmy
                Positioned(

                  bottom: 10,
                  child: Stack(
                    children: [
                      Container(
                        padding: EdgeInsets.all(8),
                        width: 31,
                        height: 31,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                          BorderRadius.all(Radius.elliptical(15, 15)),
                        ),
                        child: Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 10,
                                color: Colors.grey.shade400,
                                spreadRadius: -3,
                                offset: Offset(1, 5),
                              ),
                            ],
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image:  AssetImage("assets/images/jimmyjohns.png"),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                //burgerKing
                Positioned(
                  right: 62,
                  top: 180,
                  child: Stack(
                    children: [
                      Container(
                        padding: EdgeInsets.all(8),
                        width: 42,
                        height: 42,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                          BorderRadius.all(Radius.elliptical(15, 15)),
                        ),
                        child: Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 10,
                                color: Colors.yellow.shade100,
                                spreadRadius: -3,
                                offset: Offset(1, 5),
                              ),
                            ],
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image:  AssetImage("assets/images/burgerking.png"),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                //Pizza hut
                Positioned(
                  left: 62,
                  top: 90,
                  child: Stack(
                    children: [
                      Container(
                        padding: EdgeInsets.all(8),
                        width: 38,
                        height: 38,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.all(Radius.elliptical(15, 15)),
                        ),
                        child: Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 10,
                                color: Colors.yellow.shade100,
                                spreadRadius: -3,
                                offset: Offset(1, 5),
                              ),
                            ],
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image:  AssetImage("assets/images/pizzahut.jpg"),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                // StarBucks LOGO
                Positioned(
                  right: 65,
                  top: -10,
                  child: Stack(
                    children: [
                      Container(
                        padding: EdgeInsets.all(8),
                        width: 56.5,
                        height: 56.5,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.all(Radius.elliptical(15, 15)),
                        ),
                        child: Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 10,
                                color: Colors.lightGreen.shade100,
                                spreadRadius: -3,
                                offset: Offset(1, 5),
                              ),
                            ],
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image:
                                    AssetImage("assets/images/starbucks.png")),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                //KFC LOGO
                Positioned(
                  left: 50,
                  bottom: 8.39,
                  top: 247,
                  child: Stack(
                    children: [
                      Container(
                        padding: EdgeInsets.all(8),
                        width: 56.5,
                        height: 56.5,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.all(Radius.elliptical(15, 15)),
                        ),
                        child: Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 10,
                                color: Colors.red,
                                spreadRadius: -3,
                                offset: Offset(1, 5),
                              ),
                            ],
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage("assets/images/kfc.png")),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 61,
            ),
            Row(
              children: [

              ],
            ),
            Container(
              width: 25,
              height: 5,
              color: Colors.yellow,
              child: Row(

              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 33, right: 20, left: 20),
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 90,
                    child: Text(
                      "Browse your menu and order directly",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xff131A38),
                        fontSize: 38,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 12, right: 20, left: 20),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 54,
                      child: Text(
                        "Our app can send you everywhere, even space. For only \$2.99 per month",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 17,
                          color: Color(0xff616772),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(
                  bottom: 40,
                ),
                child: SizedBox(
                  height: 67,
                  width: 67,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, Routes.signUp);
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xffFE724C), shape: CircleBorder()),
                    child: Icon(Icons.arrow_forward),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}