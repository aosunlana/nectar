import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFF53B175),
      body: Center(
          child: SizedBox(
        width: 268,
        height: 69,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
                height: 64,
                width: 55,
                child: Image(
                  image: AssetImage('assets/images/nectar-logo.png'),
                )),
            Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  SizedBox(
                      height: 47,
                      width: 195,
                      child: Image(
                          image:
                              AssetImage('assets/images/nectar-vector.png'))),
                  Text(
                    'online roceries Store',
                    style: TextStyle(
                        fontFamily: 'Gilroy-Medium',
                        fontSize: 14,
                        letterSpacing: 2,
                        color: Color(0XFFFFFFFF)),
                  )
                ])
          ],
        ),
      )),
    );
  }
}
