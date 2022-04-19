import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nectar/routes.dart';

void main() {
  runApp(const NectarApp());
}

class NectarApp extends StatelessWidget {
  const NectarApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Nectar Grocery App',
      builder: (context, child) => AnnotatedRegion<SystemUiOverlayStyle>(
        child: child!,
        value: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.dark,
          systemNavigationBarColor: Color(0XFFFFFFFF),
          systemNavigationBarIconBrightness: Brightness.dark,
        ),
      ),
      initialRoute: RouteGenerator.splashView,
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
