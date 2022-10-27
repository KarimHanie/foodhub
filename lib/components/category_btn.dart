// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class CategoryButton extends StatelessWidget {
  String image;
  String name;

  CategoryButton(this.image, this.name);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: Colors.white,
        elevation: 7,
        fixedSize: Size.fromHeight(150),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50)),
      ),
      onPressed: () {},
      child: Column(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(image),
            backgroundColor: Colors.red,
            radius: 40,
          ),
          SizedBox(height: 10),
          Text(
            name,
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: Colors.black),
          ),
        ],
      ),
    );
  }
}
