import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GetStartedView extends StatelessWidget {
  const GetStartedView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 400.h,
            width: double.infinity,
            child: const Image(
                image: AssetImage('assets/images/get-started-header.png')),
          ),
        ],
      ),
    );
  }
}
