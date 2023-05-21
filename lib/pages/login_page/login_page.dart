import 'package:aureus/components/button_component.dart';
import 'package:aureus/components/text_form_component.dart';
import 'package:aureus/styles/app_color_styles.dart';
import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

const BeamPage loginBeamPage = BeamPage(
  key: ValueKey('login'),
  child: LoginPage(),
);

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController _emailController = TextEditingController();
    final TextEditingController _passwordController = TextEditingController();

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 10.h),
                child: RichText(
                  text: TextSpan(
                    text: 'Job',
                    style: TextStyle(
                      fontSize: 28.sp,
                      fontWeight: FontWeight.bold,
                      color: AppColor.kOrange,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'box',
                        style: TextStyle(
                          fontSize: 28.sp,
                          fontWeight: FontWeight.bold,
                          color: AppColor.kBlack,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 4.w),
                child: TextFormComponent(
                  labelName: 'Email',
                  controller: _emailController,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 3.h),
                child: TextFormComponent(
                  labelName: 'Password',
                  controller: _passwordController,
                  isPassword: true,
                ),
              ),
              Text(
                'Forgot Password?',
                style: TextStyle(
                  fontSize: 15.sp,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 4.w),
                child: Container(
                  margin: EdgeInsets.only(top: 4.h, bottom: 3.h),
                  width: double.infinity,
                  child: ButtonComponent(
                    labelName: 'Login',
                    onPressed: () => context.beamToNamed('/homePage'),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don't have an account?",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    width: 2.w,
                  ),
                  GestureDetector(
                    onTap: () => context.beamToNamed('/signup'),
                    child: const Text(
                      "Sign Up",
                      style: TextStyle(
                        color: AppColor.kOrange,
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
    );
  }
}
