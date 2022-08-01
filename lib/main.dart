import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lyrics_marker/route.dart';
import 'package:lyrics_marker/utils/helpers/constant_app_color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static final mySystemTheme = SystemUiOverlayStyle.light
      .copyWith(systemNavigationBarColor: Colors.black);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return AnnotatedRegion<SystemUiOverlayStyle>(
          value: mySystemTheme,
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: ThemeData(
                textTheme: TextTheme(
                  headline4: TextStyle(fontSize: 35.sp, fontFamily: 'Wix'),
                  headline1: TextStyle(fontSize: 75.sp, fontFamily: 'Wix'),
                  headline6: TextStyle(fontSize: 20.sp, fontFamily: 'Wix'),
                  caption: TextStyle(fontSize: 11.sp, fontFamily: 'Wix'),
                  bodyText1: TextStyle(fontSize: 18.sp, fontFamily: 'Wix'),
                  bodyText2: TextStyle(fontSize: 15.sp, fontFamily: 'Wix'),
                ),
                elevatedButtonTheme: ElevatedButtonThemeData(
                  style: ElevatedButton.styleFrom(
                    primary: ConstantAppColor.myRedLight,
                  ),
                ),
                outlinedButtonTheme: OutlinedButtonThemeData(
                  style: OutlinedButton.styleFrom(
                    padding: EdgeInsets.all(15.w),
                    side: const BorderSide(
                      color: Colors.white,
                      width: 2,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
                inputDecorationTheme: InputDecorationTheme(
                  enabledBorder: buildOutlineInputBorder(),
                  disabledBorder: buildOutlineInputBorder(),
                  focusedBorder: buildOutlineInputBorder(),
                  border: buildOutlineInputBorder(),
                  hintStyle: TextStyle(
                      fontSize: 15.sp, fontFamily: 'Wix', color: Colors.white),
                )),
            themeMode: ThemeMode.dark,
            initialRoute: RouteGenerator.startPage,
            onGenerateRoute: RouteGenerator.generateRoutes,
          ),
        );
      },
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(7),
      borderSide: const BorderSide(
        color: ConstantAppColor.myRedLight,
        width: 2,
      ),
    );
  }
}
