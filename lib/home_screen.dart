// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Container(
          padding: EdgeInsets.all(8),
          child: TextButton(
            onPressed: (){},
            style: TextButton.styleFrom(
              backgroundColor: Colors.white,
              elevation: 7,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
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
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Colors.black
            ),
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
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
              iconSize: 40,
              onPressed: (){},
              icon: ImageIcon(
                AssetImage('assets/icons/icon_1.png'),
                color: Colors.grey,
              ),
            ),
            IconButton(
              iconSize: 40,
              onPressed: (){},
              icon: ImageIcon(
                AssetImage('assets/icons/icon_2.png'),
                color: Colors.grey,
              ),
            ),
            IconButton(
              iconSize: 40,
              onPressed: (){},
              icon: ImageIcon(
                AssetImage('assets/icons/icon_3.png'),
                color: Colors.grey,
              ),
            ),
            IconButton(
              iconSize: 40,
              onPressed: (){},
              icon: ImageIcon(
                AssetImage('assets/icons/icon_4.png'),
                color: Colors.grey,
              ),
            ),
            IconButton(
              iconSize: 40,
              onPressed: (){},
              icon: ImageIcon(
                AssetImage('assets/icons/icon_5.png'),
                color: Colors.grey,
              ),
            ),
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
                    decoration: TextDecoration.none
                  ),
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
                            hintStyle: TextStyle(
                                color: Color(0xFF9DA4BB)
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                borderSide: BorderSide.none
                            ),
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
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                        ),
                        onPressed: () {  },
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
                      TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.white,
                          elevation: 7,
                          fixedSize: Size.fromHeight(150),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                        ),
                        onPressed: (){},
                        child: Column(
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage('assets/images/burger_category.png'),
                              backgroundColor: Colors.red,
                              radius: 40,
                            ),
                            SizedBox(height: 10),
                            Text(
                              'Burger',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: Colors.black
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 20),
                      TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.white,
                          elevation: 7,
                          fixedSize: Size.fromHeight(150),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                        ),
                        onPressed: (){},
                        child: Column(
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage('assets/images/donuts.png'),
                              backgroundColor: Colors.red,
                              radius: 40,
                            ),
                            SizedBox(height: 10),
                            Text(
                              'Donuts',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 20),
                      TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.white,
                          elevation: 7,
                          fixedSize: Size.fromHeight(150),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                        ),
                        onPressed: (){},
                        child: Column(
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage('assets/images/pizza.png'),
                              backgroundColor: Colors.red,
                              radius: 40,
                            ),
                            SizedBox(height: 10),
                            Text(
                              'Pizza',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 20),
                      TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.white,
                          elevation: 7,
                          fixedSize: Size.fromHeight(150),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                        ),
                        onPressed: (){},
                        child: Column(
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage('assets/images/mexican.png'),
                              backgroundColor: Colors.red,
                              radius: 40,
                            ),
                            SizedBox(height: 10),
                            Text(
                              'Mexican',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 20),
                      TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.white,
                          elevation: 7,
                          fixedSize: Size.fromHeight(150),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                        ),
                        onPressed: (){},
                        child: Column(
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage('assets/images/asian.png'),
                              backgroundColor: Colors.red,
                              radius: 40,
                            ),
                            SizedBox(height: 10),
                            Text(
                              'Asian',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black
                              ),
                            ),
                          ],
                        ),
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
                    color: Colors.black
                  ),
                ),
                SizedBox(height: 10),
                SizedBox(
                  height: 250,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Card(
                        color: Colors.white,
                        elevation: 7,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                        child: SizedBox(
                          width: 266,
                          height: 225,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image(
                                  image: AssetImage('assets/images/McDonald_pic.png'),
                                  height: 136,
                                  width: 266,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8),
                                child: Text(
                                  'McDonald’s',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black
                                  ),
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
                                          'BURGER',
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xFF515154)
                                          ),
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
                                          'CHICKEN',
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                              color: Color(0xFF515154)
                                          ),
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
                                          'FAST FOOD',
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                              color: Color(0xFF515154)
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Card(
                        color: Colors.white,
                        elevation: 7,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                        child: SizedBox(
                          width: 266,
                          height: 225,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image(
                                  image: AssetImage('assets/images/Starbucks_pic.png'),
                                  height: 136,
                                  width: 266,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8),
                                child: Text(
                                  'Starbucks',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black
                                  ),
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
                                          'COFFEE',
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                              color: Color(0xFF515154)
                                          ),
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
                                          'CHICKEN',
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                              color: Color(0xFF515154)
                                          ),
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
                                          'FAST FOOD',
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                              color: Color(0xFF515154)
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ), //Featured restaurants
                SizedBox(height: 30),
                Text(
                  'Popular items',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.black
                  ),
                ),
                SizedBox(height: 10),
                SizedBox(
                  height: 220,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Card(
                        color: Colors.white,
                        elevation: 7,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                        child: SizedBox(
                          width: 155,
                          height: 216,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image(
                                  image: AssetImage('assets/images/salmon_1.png'),
                                  height: 136,
                                  width: 266,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8),
                                child: Text(
                                  'Salmon Salad',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 8.0),
                                child: Text(
                                  'Baked salmon fish',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w300,
                                    color: Color(0xFF7D7D85)
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Card(
                        color: Colors.white,
                        elevation: 7,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                        child: SizedBox(
                          width: 155,
                          height: 216,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image(
                                  image: AssetImage('assets/images/salmon_2.png'),
                                  height: 136,
                                  width: 266,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8),
                                child: Text(
                                  'Salmon Salad',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 8.0),
                                child: Text(
                                  'Baked salmon fish',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w300,
                                      color: Color(0xFF7D7D85)
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
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