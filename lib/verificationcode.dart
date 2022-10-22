import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'Route/routes.dart';
import 'arguments/verification_arguments.dart';
import 'components/registration_background.dart';

class VerificationCode extends StatelessWidget {
  VerificationArguments arguments;

  VerificationCode({Key? key, required this.arguments}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String email = arguments.email!;
    return Scaffold(
      body: Stack(
        children: [
          RegistrationBackGround(
            color: Color(0xffffffff), // Screen background color
          ),
          Positioned(
            top: 37,
            left: 27,
            child: SizedBox(
              height: 38,
              width: 38,
              // color: Colors.red,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(),
                    primary: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    )),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back_ios_new_outlined,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 26, top: 114, right: 53),
                    child: Container(
                      height: 40,
                      width: double.infinity,
                      child: FittedBox(
                        fit: BoxFit.cover,
                        child: Text(
                          "Verifiication Code",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 38),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 26, top: 12, right: 60),
                    child: Container(
                      height: 38,
                      width: double.infinity,
                      child: FittedBox(
                        fit: BoxFit.cover,
                        child: Text(
                          textAlign: TextAlign.start,
                          "Please type the verification code sent to\n ${email}",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Color(0xff9796A1)),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 31,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 26),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: 65,
                          width: 65,
                          child: TextFormField(
                            onChanged: (value) {
                              if (value.length == 1) {
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            cursorColor: Color(0xffFFC529),
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly,
                            ],
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 27,
                              color: Color(0xffFE724C),
                            ),
                            textAlign: TextAlign.center,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(14),
                                  borderSide: BorderSide(
                                    color: Colors.white38,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xffFE724C),
                                  ),
                                  borderRadius: BorderRadius.circular(14),
                                )),
                          ),
                        ),
                        SizedBox(
                          height: 65,
                          width: 65,
                          child: TextFormField(
                            onChanged: (value) {
                              if (value.length == 1) {
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            cursorColor: Color(0xffFFC529),
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly,
                            ],
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 27,
                              color: Color(0xffFE724C),
                            ),
                            textAlign: TextAlign.center,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(14),
                                  borderSide: BorderSide(
                                    color: Colors.white38,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xffFE724C),
                                  ),
                                  borderRadius: BorderRadius.circular(14),
                                )),
                          ),
                        ),
                        SizedBox(
                          height: 65,
                          width: 65,
                          child: TextFormField(
                            onChanged: (value) {
                              if (value.length == 1) {
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            cursorColor: Color(0xffFFC529),
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly,
                            ],
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 27,
                              color: Color(0xffFE724C),
                            ),
                            textAlign: TextAlign.center,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(14),
                                  borderSide: BorderSide(
                                    color: Colors.white38,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xffFE724C),
                                  ),
                                  borderRadius: BorderRadius.circular(14),
                                )),
                          ),
                        ),
                        SizedBox(
                          height: 65,
                          width: 65,
                          child: TextFormField(
                            onChanged: (value) {
                              if (value.length == 1) {
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            cursorColor: Color(0xffFFC529),
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly,
                            ],
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 27,
                              color: Color(0xffFE724C),
                            ),
                            textAlign: TextAlign.center,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(14),
                                  borderSide: BorderSide(
                                    color: Colors.white38,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xffFE724C),
                                  ),
                                  borderRadius: BorderRadius.circular(14),
                                )),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  GestureDetector(
                    onTap: () => Navigator.pushNamed(
                        context, Routes.verificationCode,
                        arguments: arguments.email),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                              text: "I don’t recevied a code!",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                                color: Color(0xff5B5B5E),
                              )),
                          TextSpan(
                            text: " Please resend",
                            style: TextStyle(
                              color: Color(0xffFE724C),
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
