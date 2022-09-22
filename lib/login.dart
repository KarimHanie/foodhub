import 'package:flutter/material.dart';

import 'Route/routes.dart';
import 'components/registration_background.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);
  final double boarderSide = 15;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          RegistrationBackGround(
            color: Color(0xffffffff), // Screen background color
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: 37,
              horizontal: 27,
            ),
            child: Container(
              height: 38,
              width: 38,
              // color: Colors.red,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(),
                    primary: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    )
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back_ios_new_outlined,
                    color: Colors.black,
                  )),
            ),
          ),
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 144, left: 26),
                    child: Container(
                      // color: Colors.red,
                      width: MediaQuery.of(context).size.width /3,
                      height: 42,
                      child: FittedBox(
                        fit: BoxFit.cover,
                        child: Text(
                          "Login",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 36),
                        ),
                      ),
                    ),
                  ),
                  Form(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 31,
                        ),
                        // Email
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 26),
                          child: Container(
                            // color: Colors.red,
                            width: MediaQuery.of(context).size.width,
                            height: 93,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "E-mail",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    color: Color(0xff9796A1),
                                  ),
                                ),
                                SizedBox(
                                  height: 12,
                                ),
                                TextFormField(
                                  decoration: InputDecoration(
                                    labelText: "Your email or phone",
                                    border: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.circular(boarderSide),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        // Password
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 29, horizontal: 26),
                          child: Container(
                            // color: Colors.red,
                            width: MediaQuery.of(context).size.width,
                            height: 93,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Password",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    color: Color(0xff9796A1),
                                  ),
                                ),
                                SizedBox(
                                  height: 12,
                                ),
                                TextFormField(
                                  decoration: InputDecoration(
                                    suffixIcon: IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.remove_red_eye,
                                          color: Color(0xffD0D2D1)),
                                    ),
                                    labelText: "Password",
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Button SIGN UP
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 65),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(35),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xffFE724C).withOpacity(0.6),
                              blurRadius: 20,
                              spreadRadius: 2,
                              offset: Offset(1, 8),
                            ),
                          ]),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            shadowColor: Color(0xffFE724C),
                            primary: Color(0xffFE724C),
                            fixedSize:
                                Size(MediaQuery.of(context).size.width, 60),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(35),
                            )),
                        child: Text(
                          "LOGIN",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                  // Already have an account? Login
                  SizedBox(
                    height: 32,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 78),
                      child: GestureDetector(
                        onTap: () => Navigator.pushNamed(context, Routes.login),
                        child: RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: "Already have an account?",
                                style: TextStyle(
                                  color: Color(0xff5B5B5E),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                )),
                            TextSpan(
                                text: "Login",
                                style: TextStyle(
                                  color: Color(0xffFE724C),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                )),
                          ]),
                        ),
                      ),
                    ),
                  ),
                  // SizedBox(height: 100,),

                  Padding(
                    padding: EdgeInsets.only(right: 25, left: 25, top: 20),
                    child: Container(
                      // color: Colors.red,
                      width: MediaQuery.of(context).size.width,
                      height: 86,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Expanded(
                                child: Divider(
                                  color: Color(0xffB3B3B3),
                                  thickness: 1,
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                "Sign up with",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff5B5B5E)),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Expanded(
                                child: Divider(
                                  thickness: 1,
                                  color: Color(0xffB3B3B3),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.013),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width / 2.5,
                                height: 57,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.white,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                  ),
                                  child: Text("Facebook"),
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width / 2.5,
                                height: 57,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                      primary: Colors.white,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(30))),
                                  child: Text(
                                    "Google",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
