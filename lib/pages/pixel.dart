import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// import 'user.dart';

class PixelApp extends StatefulWidget {
  const PixelApp({super.key});

  @override
  State<PixelApp> createState() => _PixelAppState();
}

// enum Gender { male, female, other }

// Gender? defaultGender = Gender.male;

// ignore: constant_identifier_names
// enum Occupation { govt, private, semi_Govt }

// Occupation? occupation = Occupation.govt;

class _PixelAppState extends State<PixelApp> {
  final purpleColor = const Color(0xff6688ff);

  final darkTextColor = const Color(0xff1f1a3d);

  final lightTextColor = const Color(0xff999999);

  final textFieldColor = const Color(0xfff5f6fa);

  final borderColor = const Color(0xffd9d9d9);

  Widget getTextField({required String hint}) {
    return TextField(
      // obscureText: true,
      decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.r),
              borderSide:
                  const BorderSide(color: Colors.transparent, width: 0)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: Colors.transparent, width: 0.w)),
          contentPadding:
              EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
          filled: true,
          fillColor: textFieldColor,
          hintText: hint,
          hintStyle: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w400)),
    );
  }

  // final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 21.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 45.h),
              Text(
                "Sign up to MasterMinds",
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                  color: darkTextColor,
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Wrap(
                children: [
                  Text(
                    "already have an account?  ",
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        color: lightTextColor),
                  ),
                  Text(
                    "Login",
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: purpleColor),
                  ),
                  SizedBox(
                    height: 4.h,
                  )
                ],
              ),
              SizedBox(
                height: 24.h,
              ),
              getTextField(hint: "Enter your Full name"),
              SizedBox(
                height: 16.h,
              ),
              getTextField(hint: "Enter your email or phone"),
              SizedBox(
                height: 16.h,
              ),
              getTextField(hint: "Enter your password"),
              SizedBox(
                height: 16.h,
              ),
              getTextField(hint: "Confirm your password"),
              SizedBox(
                height: 16.h,
              ),
              SizedBox(
                height: 16.h,
              ),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(purpleColor),
                      foregroundColor: MaterialStateProperty.all(Colors.white),
                      padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(vertical: 14.h),
                      ),
                      textStyle: MaterialStateProperty.all(TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w700,
                      ))),
                  child: const Text("Create Account"),
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              Row(
                children: [
                  const Expanded(child: Divider()),
                  SizedBox(
                    width: 16.w,
                  ),
                  Text(
                    "or sign up via",
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                        color: lightTextColor),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  const Expanded(child: Divider()),
                ],
              ),
              SizedBox(
                height: 16.h,
              ),
              SizedBox(
                height: 16.h,
              ),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        side: MaterialStateProperty.all(
                          BorderSide(color: borderColor),
                        ),
                        foregroundColor:
                            MaterialStateProperty.all(darkTextColor),
                        padding: MaterialStateProperty.all(
                          EdgeInsets.symmetric(vertical: 14.h),
                        ),
                        textStyle: MaterialStateProperty.all(TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w700,
                        ))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/Google.jpg',
                          width: 50.w,
                          height: 30.h,
                        ),
                        const Text(
                          "Google",
                        ),
                      ],
                    )),
              ),
              SizedBox(
                height: 16.h,
              ),
              Wrap(
                children: [
                  Text(
                    " By signing up to Masterminds you agree to our  ",
                    style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w600,
                        color: lightTextColor),
                  ),
                  Text(
                    "terms and conditions",
                    style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                        color: purpleColor),
                  ),
                  SizedBox(
                    height: 4.h,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
