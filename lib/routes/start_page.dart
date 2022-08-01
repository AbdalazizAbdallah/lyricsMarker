import 'package:flutter/material.dart';
import 'package:flutter/src/material/colors.dart' as colP;
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lyrics_marker/route.dart';
import 'package:vector_math/vector_math_64.dart';

import '../utils/helpers/constant_app_color.dart';
import '../utils/helpers/constant_app_image.dart';

class StartPage extends StatefulWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  void didChangeDependencies() {
    precacheImage(const AssetImage(ConstantAppImage.startImage), context);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 21.w, vertical: 31.h),
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(ConstantAppImage.startImage),
            fit: BoxFit.none,
          ),
        ),
        child: Flex(
          direction: Axis.vertical,
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: RichText(
                text: TextSpan(
                    text: 'create any '.toUpperCase(),
                    style: textTheme.headline4?.copyWith(
                      color: colP.Colors.white,
                    ),
                    children: [
                      TextSpan(
                        text: 'lyrics'.toUpperCase(),
                        style: textTheme.headline4?.copyWith(
                          color: ConstantAppColor.myRedLight,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ]),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Transform(
                transform: Matrix4.rotationY(radians(180)),
                alignment: Alignment.center,
                child: Text(
                  'FROM YOUR PHONE',
                  style: textTheme.headline4
                      ?.copyWith(color: colP.Colors.white, fontSize: 28.sp),
                ),
              ),
            ),
            Spacer(),
            Text(
              'Join The Community',
              style: textTheme.headline6?.copyWith(
                color: colP.Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'The Ultimate Lyrics Marker App',
              style: textTheme.caption?.copyWith(
                color: colP.Colors.white,
              ),
            ),
            SizedBox(
              height: 13.h,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(13.h),
                  minimumSize: Size(254.w, 51.w),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
              onPressed: () {
                Navigator.pushNamed(context, RouteGenerator.loginPage);
              },
              child: Text(
                'Get started',
                style: textTheme.bodyText1?.copyWith(
                  color: colP.Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 50.h,
            ),
          ],
        ),
      ),
    );
  }
}
