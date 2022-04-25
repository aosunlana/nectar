import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectar/routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
      overlays: [SystemUiOverlay.top]).then((_) => runApp(const NectarApp()));
}

class NectarApp extends StatelessWidget {
  const NectarApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(414, 896),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Nectar Grocery App',
        builder: (context, child) => AnnotatedRegion<SystemUiOverlayStyle>(
          child: child!,
          value: const SystemUiOverlayStyle(
            systemNavigationBarColor: Colors.transparent,
            systemNavigationBarDividerColor: Colors.transparent,
            systemNavigationBarIconBrightness: Brightness.light,
            systemNavigationBarContrastEnforced: false,
            systemStatusBarContrastEnforced: false,
            statusBarIconBrightness: Brightness.dark,
            statusBarColor: Colors.transparent,
            statusBarBrightness: Brightness.dark,
          ),
        ),
        theme: ThemeData(
          fontFamily: 'Gilroy',
          colorScheme: const ColorScheme(
            brightness: Brightness.light,
            primary: Color(0XFF53B175),
            onPrimary: Color(0XFFFFFFFF),
            secondary: Color(0XFF53B175),
            onSecondary: Color(0XFFFFFFFF),
            error: Color(0XFFFF0000),
            onError: Color(0XFFFFFFFF),
            background: Color(0XFFFFFFFF),
            onBackground: Color(0XFF000000),
            surface: Color(0XFFFFFFFF),
            onSurface: Color(0XFF000000),
          ),
        ),
        initialRoute: RouteGenerator.splashView,
        onGenerateRoute: RouteGenerator.generateRoute,
      ),
    );
  }
}
