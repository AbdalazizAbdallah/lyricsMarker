import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lyrics_marker/route.dart';
import 'package:lyrics_marker/utils/helpers/constant_app_color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
              textTheme: TextTheme(
                headline4: TextStyle(fontSize: 35.sp, fontFamily: 'Wix'),
                headline6: TextStyle(fontSize: 20.sp, fontFamily: 'Wix'),
                caption: TextStyle(fontSize: 11.sp, fontFamily: 'Wix'),
                bodyText1: TextStyle(fontSize: 18.sp, fontFamily: 'Wix'),
              ),
              elevatedButtonTheme: ElevatedButtonThemeData(
                style: ElevatedButton.styleFrom(
                  primary: ConstantAppColor.myRedLight,
                ),
              )),
          initialRoute: RouteGenerator.startPage,
          onGenerateRoute: RouteGenerator.generateRoutes,
        );
      },
    );
  }
}
