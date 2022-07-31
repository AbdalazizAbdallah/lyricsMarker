import 'package:flutter/material.dart';
import 'package:flutter/src/material/colors.dart' as colP;
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vector_math/vector_math_64.dart';

import '../utils/helpers/constant_app_color.dart';
import '../utils/helpers/constant_app_image.dart';

class StartPage extends StatelessWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextTheme _textTheme = Theme.of(context).textTheme;
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
                    style: _textTheme.headline4?.copyWith(
                      color: colP.Colors.white,
                    ),
                    children: [
                      TextSpan(
                        text: 'lyrics'.toUpperCase(),
                        style: _textTheme.headline4?.copyWith(
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
                  style: _textTheme.headline4
                      ?.copyWith(color: colP.Colors.white, fontSize: 28.sp),
                ),
              ),
            ),
            Spacer(),
            Text(
              'Join The Community',
              style: _textTheme.headline6?.copyWith(
                color: colP.Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'The Ultimate Lyrics Marker App',
              style: _textTheme.caption?.copyWith(
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
                      borderRadius: BorderRadius.circular(27))),
              onPressed: () {},
              child: Text(
                'Get started',
                style: _textTheme.bodyText1?.copyWith(
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
