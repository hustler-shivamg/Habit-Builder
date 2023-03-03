import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:habit_builder/screens/auth/signup_screen.dart';
import 'package:habit_builder/values/app_colors.dart';
import 'package:habit_builder/values/text_styles.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool showPassword = false;
  var emailFocusNode = FocusNode();
  var passFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryBg,
      body: Stack(
        children: [
          Image.asset(
            "assets/images/splash.png",
            height: double.infinity,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SingleChildScrollView(
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0x00ffffff),
                      AppColors.primaryBg,
                      AppColors.primaryBg,
                      AppColors.primaryBg,
                      AppColors.primaryBg,
                      AppColors.primaryBg,
                      AppColors.primaryBg,
                      AppColors.primaryBg,
                      AppColors.primaryBg,
                      AppColors.primaryBg,
                    ],
                  ),
                ),
                padding: EdgeInsets.only(top: 20.h),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      child: Column(
                        children: [
                          Text(
                            "WELCOME TO MONUMENTAL HABITS",
                            style: Klasik.copyWith(
                              fontSize: 32.sp,
                              color: AppColors.darkTheme,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: 40.h,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 13.h, horizontal: 60.w),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12.r),
                              color: AppColors.white,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SvgPicture.asset(
                                  "assets/images/google.svg",
                                  width: 23.w,
                                  height: 23.w,
                                ),
                                SizedBox(
                                  width: 30.w,
                                ),
                                Text(
                                  "Continue with Google",
                                  style: ManropeSemiBold.copyWith(
                                    fontSize: 16.sp,
                                    color: AppColors.darkTheme,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 8.h,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 13.h, horizontal: 60.w),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12.r),
                              color: AppColors.white,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SvgPicture.asset(
                                  "assets/images/fb.svg",
                                  width: 23.w,
                                  height: 23.w,
                                ),
                                SizedBox(
                                  width: 30.w,
                                ),
                                Text(
                                  "Continue with Facebook",
                                  style: ManropeSemiBold.copyWith(
                                    fontSize: 16.sp,
                                    color: AppColors.darkTheme,
                                  ),
                                  maxLines: 1,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 25.h,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(topRight: Radius.circular(20.r), topLeft: Radius.circular(20.r)),
                        color: AppColors.white,
                      ),
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 12.h,
                          ),
                          Text(
                            "Log in with email",
                            style: ManropeMedium.copyWith(
                              fontSize: 16.sp,
                              color: AppColors.darkTheme,
                            ),
                            maxLines: 1,
                          ),
                          SizedBox(
                            height: 12.h,
                          ),
                          Container(
                            color: AppColors.primaryBg,
                            width: double.infinity,
                            height: 1.w,
                          ),
                          SizedBox(
                            height: 12.h,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20.w),
                            child: Column(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    emailFocusNode.requestFocus();
                                    setState(() {});
                                  },
                                  child: Container(
                                    height: 56.h,
                                    padding: EdgeInsets.symmetric(horizontal: 17.w),
                                    // padding: EdgeInsets.symmetric(vertical: 22.h, horizontal: 17.w),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12.r),
                                      color: AppColors.orange,
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        SvgPicture.asset(
                                          "assets/images/mail.svg",
                                          color: emailFocusNode.hasFocus ? AppColors.darkOrange : AppColors.darkTheme,
                                        ),
                                        SizedBox(
                                          width: 16.w,
                                        ),
                                        Container(
                                          // height: double.infinity,
                                          width: 1.w,
                                          color: AppColors.primaryBg,
                                        ),
                                        SizedBox(
                                          width: 16.w,
                                        ),
                                        Expanded(
                                          child: TextField(
                                            style: ManropeSemiBold.copyWith(
                                              fontSize: 16.sp,
                                              color: AppColors.darkOrange,
                                            ),
                                            keyboardType: TextInputType.emailAddress,
                                            onTap: () {
                                              emailFocusNode.requestFocus();
                                              setState(() {});
                                            },
                                            focusNode: emailFocusNode,
                                            cursorColor: AppColors.darkTheme,
                                            decoration: InputDecoration.collapsed(
                                              hintText: "Email",
                                              hintStyle: ManropeMedium.copyWith(
                                                fontSize: 16.sp,
                                                color: AppColors.darkTheme,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 8.h,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    passFocusNode.requestFocus();
                                    setState(() {});
                                  },
                                  child: Container(
                                    height: 56.h,
                                    padding: EdgeInsets.symmetric(horizontal: 19.w),
                                    // padding: EdgeInsets.symmetric(vertical: 22.h, horizontal: 19.w),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12.r),
                                      color: AppColors.orange,
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        SvgPicture.asset(
                                          "assets/images/lock.svg",
                                          color: passFocusNode.hasFocus ? AppColors.darkOrange : AppColors.darkTheme,
                                        ),
                                        SizedBox(
                                          width: 16.w,
                                        ),
                                        Container(
                                          // height: double.infinity,
                                          width: 1.w,
                                          color: AppColors.primaryBg,
                                        ),
                                        SizedBox(
                                          width: 16.w,
                                        ),
                                        Expanded(
                                          child: TextField(
                                            style: ManropeSemiBold.copyWith(
                                              fontSize: 16.sp,
                                              color: AppColors.darkOrange,
                                            ),
                                            focusNode: passFocusNode,
                                            cursorColor: AppColors.darkTheme,
                                            onTap: () {
                                              passFocusNode.requestFocus();
                                              setState(() {});
                                            },
                                            obscureText: !showPassword,
                                            keyboardType: TextInputType.visiblePassword,
                                            decoration: InputDecoration.collapsed(
                                              hintText: "Password",
                                              hintStyle: ManropeMedium.copyWith(
                                                fontSize: 16.sp,
                                                color: AppColors.darkTheme,
                                              ),
                                            ),
                                          ),
                                        ),
                                        InkWell(
                                          onTap: () {
                                            showPassword = !showPassword;
                                            setState(() {});
                                          },
                                          child: Container(
                                            color: Colors.transparent,
                                            child: Text(
                                              "Show",
                                              style: ManropeMedium.copyWith(
                                                fontSize: 14.sp,
                                                color: AppColors.darkTheme,
                                                decoration: showPassword ? TextDecoration.lineThrough : TextDecoration.none,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 21.h,
                                ),
                                Container(
                                  height: 60.h,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8.r),
                                    color: AppColors.darkOrange,
                                  ),
                                  child: Center(
                                    child: Text(
                                      "Login",
                                      style: ManropeSemiBold.copyWith(
                                        fontSize: 16.sp,
                                        color: AppColors.darkTheme,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 15.h,
                                ),
                                Text(
                                  "Forgot Password?",
                                  style: ManropeMedium.copyWith(
                                    fontSize: 14.sp,
                                    color: AppColors.darkTheme,
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                                SizedBox(
                                  height: 7.h,
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (_) => const SignupScreen()));
                                  },
                                  child: RichText(
                                    text: TextSpan(
                                      text: 'Don’t have an account? ',
                                      style: ManropeMedium.copyWith(
                                        fontSize: 14.sp,
                                        color: AppColors.darkTheme,
                                      ),
                                      children: <TextSpan>[
                                        TextSpan(
                                          text: 'Sign up',
                                          style: ManropeBold.copyWith(
                                            fontSize: 14.sp,
                                            color: AppColors.darkTheme,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 20.h,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
