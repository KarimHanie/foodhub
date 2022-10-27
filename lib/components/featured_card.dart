// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:flutter/material.dart';

class FeaturedCard extends StatelessWidget {
  String image, name, rating, number;
  String tag1, tag2, tag3;

  FeaturedCard({required this.image, required this.name, required this.rating, required this.number,
                required this.tag1, required this.tag2, required this.tag3});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 7,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20)),
      child: SizedBox(
        width: 266,
        height: 225,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Stack(
                children: [
                  Image(
                    image: AssetImage(image),
                    height: 136,
                    width: 266,
                    fit: BoxFit.fill,
                  ),

                  Padding(
                    padding: EdgeInsets.only(
                      top: 10,
                    ),
                    child: Row(
                      mainAxisAlignment:
                      MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            left: 10,
                          ),
                          child: Container(
                            width: 69,
                            height: 28,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                              BorderRadius.circular(20),
                            ),
                            child: Row(
                              mainAxisAlignment:
                              MainAxisAlignment
                                  .spaceAround,
                              children: [
                                Text(
                                  rating,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 11,
                                    fontWeight:
                                    FontWeight.w600,
                                  ),
                                ),
                                Container(
                                  height: 10,
                                  width: 10,
                                  child: Image(
                                    image: AssetImage('assets/images/yellowStar.png'),
                                  ),
                                ),
                                Text(
                                  "($number+)",
                                  style: TextStyle(
                                    color: Color(0xff9796A1),
                                    fontSize: 8,
                                    fontWeight:
                                    FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 10),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: BackdropFilter(
                              filter: ImageFilter.blur(
                                sigmaX: 5,
                                sigmaY: 5,
                              ),
                              child: Container(
                                height: 28,
                                width: 28,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white.withOpacity(0.3)

                                ),
                                child: Center(
                                  child: Icon(Icons.favorite,
                                      color: Colors.white,
                                      size: 20),
                                ),
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
            Padding(
              padding: EdgeInsets.all(8),
              child: Text(
                name,
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
            ),
            Row(
              children: [
                ImageIcon(
                  AssetImage('assets/images/delivery_icon.png'),
                  color: Color(0xFFFE724C),
                ),
                Text(
                  'free delivery',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF5B5B5E),
                  ),
                ),
                ImageIcon(
                  AssetImage('assets/images/time_icon.png'),
                  color: Color(0xFFFE724C),
                ),
                Text(
                  '10-15 mins',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF5B5B5E),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 5.0),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFE1E1E1),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    padding: EdgeInsets.all(7),
                    child: Center(
                      child: Text(
                        tag1,
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF515154)),
                      ),
                    ),
                  ),
                  SizedBox(width: 5),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFE1E1E1),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    padding: EdgeInsets.all(7),
                    child: Center(
                      child: Text(
                        tag2,
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF515154)),
                      ),
                    ),
                  ),
                  SizedBox(width: 5),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFE1E1E1),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    padding: EdgeInsets.all(7),
                    child: Center(
                      child: Text(
                        tag3,
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF515154)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}