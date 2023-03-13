import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:habit_builder/values/app_colors.dart';
import 'package:habit_builder/values/text_styles.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryBg,
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                Expanded(
                  child: Image.asset(
                    "assets/images/bg7.png",
                    width: double.infinity,
                    height: double.infinity,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 39.h, right: 27.w, left: 20.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: GestureDetector(
                          onTap: () {},
                          child: Container(
                            height: 44.w,
                            width: 44.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100.r),
                              color: AppColors.darkTheme.withOpacity(0.1),
                            ),
                            child: SvgPicture.asset(
                              "assets/images/menu.svg",
                            ),
                            // padding: EdgeInsets.symmetric(vertical: 18.h, horizontal: 13.w),
                          ),
                        ),
                      ),
                      Text(
                        "HOMEPAGE",
                        style: ManropeBold.copyWith(
                          fontSize: 18.sp,
                          color: AppColors.darkTheme,
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(100.r),
                        child: Image.network(
                          "https://www.opticalexpress.co.uk/media/1064/man-with-glasses-smiling-looking-into-distance.jpg",
                          height: 44.w,
                          width: 44.w,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 24.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Container(
                    decoration: BoxDecoration(color: AppColors.white, borderRadius: BorderRadius.circular(12.r)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(left: 15.w),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "WE FIRST MAKE OUR HABITS, AND THEN OUR HABITS MAKES US.",
                                  style: Klasik.copyWith(
                                    fontSize: 18.sp,
                                    color: AppColors.darkTheme,
                                  ),
                                ),
                                SizedBox(
                                  height: 5.h,
                                ),
                                Text(
                                  "- ANONYMOUS",
                                  style: ManropeBold.copyWith(
                                    fontSize: 12.sp,
                                    color: AppColors.darkTheme.withOpacity(0.5),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Image.asset(
                          "assets/images/bg6.png",
                          height: 146.w,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 19.h,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
