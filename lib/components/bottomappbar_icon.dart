// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class BottomAppBarIcon extends StatelessWidget {
  String icon;

  BottomAppBarIcon(this.icon);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      iconSize: 40,
      onPressed: () {},
      icon: ImageIcon(
        AssetImage(icon),
        color: Colors.grey,
      ),
    );
  }
}