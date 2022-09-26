import 'package:flutter/material.dart';

import '../Route/routes.dart';
class Button extends StatelessWidget {
  String? text;
  String? routName;
   Button({Key? key ,required this.text,required this.routName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: MediaQuery.of(context).size.width,
      height: 60,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(28),
          boxShadow: [
            BoxShadow(
                color: Color(0xffFE724C).withOpacity(0.6),
                spreadRadius: 2,
                blurRadius: 20,
                offset: Offset(0, 8)
            )
          ]
      ),
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, routName!);
        },
        style: ElevatedButton.styleFrom(
          primary: Color(0xffFE724C),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(28),
          ),
        ),
        child: Text("$text",
          style: TextStyle(
              letterSpacing: 2,
              fontSize: 15,
              fontWeight: FontWeight.w500
          ),),
      ),
    );
  }
}
