import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class GetStartedView extends StatelessWidget {
  const GetStartedView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 374.h,
            width: double.infinity,
            child: const Image(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/get-started-header.png')),
          ),
          SizedBox(
            height: 49.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Get your groceries\n with nectar',
                  style:
                      TextStyle(fontSize: 26.sp, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 30.h,
                ),
                IntlPhoneField(
                  initialCountryCode: 'NG',
                  onTap: () {},
                  showDropdownIcon: false,
                  disableLengthCheck: true,
                ),
                SizedBox(height: 40.h),
                Center(
                  child: Text(
                    'Or connect with social media',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14.sp,
                        color: const Color(0XFF828282)),
                  ),
                ),
                SizedBox(height: 37.h),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        SvgPicture.asset('assets/images/google-svg.svg'),
                        SizedBox(width: 40.w),
                        Text(
                          'Continue with Google',
                          style: TextStyle(
                              fontSize: 18.sp, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: const Color(0XFF5383EC),
                        padding: EdgeInsets.symmetric(
                            vertical: 25.h, horizontal: 40.w),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(19.r))),
                  ),
                ),
                SizedBox(height: 20.h),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SvgPicture.asset('assets/images/facebook-svg.svg'),
                        SizedBox(width: 40.w),
                        Text(
                          'Continue with Facebook',
                          style: TextStyle(
                              fontSize: 18.sp, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: const Color(0XFF4A66AC),
                        padding: EdgeInsets.symmetric(
                            vertical: 25.h, horizontal: 40.w),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(19.r))),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      backgroundColor: const Color(0XFFFBFBFB),
    );
  }
}
