import 'package:flutter/material.dart';
class RegistrationBackGround extends StatelessWidget {
  final Color? color;

  const RegistrationBackGround({Key? key, this.color}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color:color,
      ),
      child: Stack(
        children: [
          Positioned(
            top: -21,
            left:-42,
            child: Container(
              width: 96,
              height: 96,
              decoration: BoxDecoration(
                // color: ,
                shape: BoxShape.circle,
                border: Border.all(color: Color(0xffFE724C), width: 25),
              ),
            ),
          ),
          Positioned(
            top: -99,
            left: -5,
            child: Container(
              height: MediaQuery.of(context).size.height*0.25,
              width: MediaQuery.of(context).size.width*0.4,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xffFFECE7),
              ),
            ),
          ),
          Positioned(
            top: -109,
            right: -104,
            child: Container(
              height: 181,
              width: 181,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xffFE724C),),
            ),
          ),
        ],
      ),
    );
  }
}
