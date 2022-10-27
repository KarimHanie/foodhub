// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'components/category_btn.dart';
import 'components/featured_card.dart';
import 'components/popular_card.dart';
import 'components/bottomappbar_icon.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.white, // <-- SEE HERE
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Container(
          padding: EdgeInsets.all(8),
          child: TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              backgroundColor: Colors.white,
              elevation: 7,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
            ),
            child: ImageIcon(
              AssetImage('assets/images/Menu_icon.png'),
              color: Colors.black,
            ),
          ),
        ),
        title: Center(
          child: Text(
            'Deliver to \n4102  Pretty View Lane',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.w400, color: Colors.black),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.all(3.0),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/images/AppBar_pic.png'),
              radius: 25,
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 10,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            BottomAppBarIcon('assets/icons/icon_1.png'),
            BottomAppBarIcon('assets/icons/icon_2.png'),
            BottomAppBarIcon('assets/icons/icon_3.png'),
            BottomAppBarIcon('assets/icons/icon_4.png'),
            BottomAppBarIcon('assets/icons/icon_5.png'),
          ],
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        color: Colors.white,
        child: SafeArea(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                Text(
                  'What would you like to order',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                      decoration: TextDecoration.none),
                ), //What do yu like to order text
                SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.only(left: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey[200],
                        ),
                        child: TextField(
                          style: TextStyle(color: Colors.black),
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.grey[200],
                            icon: Icon(Icons.search, color: Color(0xFF767F9D)),
                            hintText: 'Find for food or restaurant...',
                            hintStyle: TextStyle(color: Color(0xFF9DA4BB)),
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                                borderSide: BorderSide.none),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      width: 51,
                      height: 51,
                      padding: EdgeInsets.only(right: 3),
                      child: TextButton(
                        style: TextButton.styleFrom(
                          elevation: 7,
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        onPressed: () {},
                        child: ImageIcon(
                          AssetImage('assets/images/filter_icon.png'),
                          color: Color(0xFFFE724C),
                        ),
                      ),
                    ),
                  ],
                ), //Text field and filter button
                SizedBox(height: 30),
                SingleChildScrollView(
                  padding: EdgeInsets.only(bottom: 10, left: 5, right: 5),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      CategoryButton(
                        'assets/images/burger_category.png',
                        'BURGER'
                      ),
                      SizedBox(width: 20),
                      CategoryButton(
                          'assets/images/donuts.png',
                          'DONUTS'
                      ),
                      SizedBox(width: 20),
                      CategoryButton(
                          'assets/images/pizza.png',
                          'PIZZA'
                      ),
                      SizedBox(width: 20),
                      CategoryButton(
                          'assets/images/mexican.png',
                          'MEXICAN'
                      ),
                      SizedBox(width: 20),
                      CategoryButton(
                          'assets/images/asian.png',
                          'ASIAN'
                      ),
                    ],
                  ),
                ), //Categories
                SizedBox(height: 20),
                Text(
                  'Featured restaurants',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
                SizedBox(height: 10),
                SizedBox(
                  height: 250,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      FeaturedCard(
                        image: 'assets/images/McDonald_pic.png',
                        name: 'MacDonald',
                        rating: '4.5',
                        number: '25',
                        tag1: 'BURGER',
                        tag2: 'CHICKEN',
                        tag3: 'FAST FOOD',
                      ),
                      SizedBox(width: 10),
                      FeaturedCard(
                        image: 'assets/images/Starbucks_pic.png',
                        name: 'Starbucks',
                        rating: '4.7',
                        number: '99',
                        tag1: 'COFFEE',
                        tag2: 'CHICKEN',
                        tag3: 'FAST FOOD',
                      )
                    ],
                  ),
                ), //Featured restaurants
                SizedBox(height: 30),
                Text(
                  'Popular items',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
                SizedBox(height: 10),
                SizedBox(
                  height: 220,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      PopularCard(
                        image: 'assets/images/salmon_1.png',
                        name: 'Salmon',
                        description: 'Baked salmon fish',
                        price: '5.50',
                      ),
                      SizedBox(width: 10),
                      PopularCard(
                        image: 'assets/images/salmon_2.png',
                        name: 'Salmon',
                        description: 'Baked salmon fish',
                        price: '8.25',
                      ),
                    ],
                  ),
                ), //Popular items
              ],
            ),
          ),
        ),
      ),
    );
  }
}