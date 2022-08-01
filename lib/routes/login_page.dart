import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/material/colors.dart' as colP;
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lyrics_marker/utils/helpers/constant_app_image.dart';
import 'package:vector_math/vector_math_64.dart';

import '../utils/helpers/constant_app_color.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  void didChangeDependencies() {
    precacheImage(const AssetImage(ConstantAppImage.loginImage), context);
    super.didChangeDependencies();
  }

  bool obscureVar = true;

  void visiablePass() {
    obscureVar = !obscureVar;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 35.w, vertical: 50.h),
          decoration: const BoxDecoration(
            color: colP.Colors.black,
            image: DecorationImage(
              image: AssetImage(ConstantAppImage.loginImage),
              fit: BoxFit.none,
              colorFilter: ColorFilter.mode(Color(0xFF121212), BlendMode.color),
            ),
          ),
          child: Form(
            child: Flex(
              direction: Axis.vertical,
              children: [
                SizedBox(
                  height: 142.h,
                  width: double.infinity,
                  child: Stack(
                    fit: StackFit.expand,
                    alignment: Alignment.center,
                    children: [
                      Positioned(
                        top: 1,
                        child: Text(
                          'Lyrics'.toUpperCase(),
                          style: textTheme.headline1?.copyWith(
                            color: ConstantAppColor.myRedLight,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: -10,
                        child: Transform(
                          transform: Matrix4.rotationY(radians(180)),
                          alignment: Alignment.center,
                          child: Text(
                            'maker'.toUpperCase(),
                            style: textTheme.headline1?.copyWith(
                              color: colP.Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 61.h,
                ),
                TextFormField(
                  //autofocus: true,
                  textInputAction: TextInputAction.next,
                  style: textTheme.bodyText2?.copyWith(
                    color: colP.Colors.white,
                  ),
                  decoration: const InputDecoration(
                    hintText: 'Full Name',
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                TextFormField(
                  textInputAction: TextInputAction.next,
                  style: textTheme.bodyText2?.copyWith(
                    color: colP.Colors.white,
                  ),
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    hintText: 'Email',
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                TextFormField(
                  textInputAction: TextInputAction.done,
                  obscureText: obscureVar,
                  keyboardType: TextInputType.visiblePassword,
                  style: textTheme.bodyText2?.copyWith(
                    color: colP.Colors.white,
                  ),
                  decoration: InputDecoration(
                    hintText: 'Password',
                    suffixIcon: IconButton(
                      onPressed: visiablePass,
                      icon: Icon(
                        obscureVar ? Icons.visibility : Icons.visibility_off,
                        color: ConstantAppColor.myRedLight,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.all(13.h),
                      minimumSize: Size(double.infinity, 51.w),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                  onPressed: () {},
                  child: Text(
                    'Join us',
                    style: textTheme.bodyText1?.copyWith(
                      color: colP.Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 11.h,
                ),
                Text(
                  'No credit card required',
                  style: textTheme.caption?.copyWith(
                    color: colP.Colors.white,
                  ),
                ),
                SizedBox(
                  height: 39.h,
                ),
                const Divider(
                  color: ConstantAppColor.myRedLight,
                ),
                SizedBox(
                  height: 39.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 11.w),
                  child: Flex(
                    direction: Axis.horizontal,
                    children: [
                      Expanded(
                        child: OutlinedButton.icon(
                          style: OutlinedButton.styleFrom(
                              side: const BorderSide(
                            color: ConstantAppColor.myBlueFaceBook,
                            width: 2,
                          )),
                          onPressed: () {},
                          icon: SvgPicture.asset(
                            ConstantAppImage.facebookImage,
                          ),
                          label: const SizedBox(),
                        ),
                      ),
                      SizedBox(
                        width: 15.w,
                      ),
                      Expanded(
                        child: OutlinedButton.icon(
                          onPressed: () {},
                          icon: SvgPicture.asset(
                            ConstantAppImage.googleImage,
                          ),
                          label: const SizedBox(),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 19.h,
                ),
                RichText(
                  text: TextSpan(
                    text: 'By continuing, you agree to accept our ',
                    style: textTheme.caption?.copyWith(
                      color: colP.Colors.white,
                      fontSize: 8.sp,
                    ),
                    children: [
                      TextSpan(
                        text: 'Terms of Use and Privacy Policy',
                        style: textTheme.caption?.copyWith(
                          color: colP.Colors.white,
                          fontSize: 8.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Flex(
                  direction: Axis.horizontal,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already a member? ',
                      style: textTheme.caption?.copyWith(
                        color: colP.Colors.white,
                        fontSize: 9.sp,
                      ),
                    ),
                    InkWell(
                      splashColor: ConstantAppColor.myRedLight,
                      onTap: () {
                        debugPrint('----------');
                      },
                      child: Text(
                        ' Sign in',
                        style: textTheme.caption?.copyWith(
                          color: ConstantAppColor.myRedLight,
                          fontSize: 12.sp,
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
