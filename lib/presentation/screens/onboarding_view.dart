import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/onboarding.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.fromLTRB(30.w, 485.h, 30.w, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 48.w,
                height: 56.h,
                child: const Image(
                  image: AssetImage('assets/images/nectar-logo.png'),
                ),
              ),
              SizedBox(
                height: 36.h,
              ),
              Center(
                child: Text(
                  'Welcome\n to our store',
                  style: TextStyle(
                    fontSize: 48.sp,
                    fontWeight: FontWeight.w600,
                    color: const Color(0XFFFFFFFF),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Text('Get your groceries in as fast as one hour',
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w300,
                    color: const Color(0XFFFFFFFF),
                  )),
              SizedBox(height: 40.h),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Get Started',
                      style: TextStyle(
                        fontSize: 18.sp,
                        color: const Color(0XFFFFF9FF),
                      )),
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 25.h),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(19.r))),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
