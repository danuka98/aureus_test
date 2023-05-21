import 'package:aureus/components/button_component.dart';
import 'package:aureus/components/text_form_component.dart';
import 'package:aureus/styles/app_color_styles.dart';
import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

const BeamPage signUpBeamPage = BeamPage(
  key: ValueKey('signup'),
  child: SignUpPage(),
);

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _reTypePasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        leading: IconButton(
            onPressed: () => context.beamBack(),
            icon: Icon(
              Icons.arrow_back_ios,
              color: AppColor.kBlack.withOpacity(0.6),
            )),
        title: Text(
          "Sign Up",
          style: TextStyle(
            color: AppColor.kBlack.withOpacity(0.6),
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 4.w),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 5.h, bottom: 4.h),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: AppColor.kBlack.withOpacity(0.6),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(5.w),
                  child: const Text(
                    'Add\nPhoto',
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              TextFormComponent(
                labelName: 'Email',
                controller: _emailController,
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 3.h),
                child: TextFormComponent(
                  labelName: 'New Password',
                  controller: _passwordController,
                  isPassword: true,
                ),
              ),
              TextFormComponent(
                labelName: 'Re-Type Password',
                controller: _reTypePasswordController,
                isPassword: true,
              ),
              Container(
                margin: EdgeInsets.only(top: 5.h, bottom: 3.h),
                width: double.infinity,
                child: ButtonComponent(
                  labelName: 'Create Account',
                  onPressed: () => context.beamToNamed('/homePage'),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account?",
                    style: TextStyle(
                      color: AppColor.kBlack,
                      fontSize: 16.sp
                    ),
                  ),
                  SizedBox(
                    width: 2.w,
                  ),
                  GestureDetector(
                    onTap: () =>  context.beamToNamed('/login'),
                    child: Text(
                      "Log In",
                      style: TextStyle(
                        color: AppColor.kOrange,
                        fontWeight: FontWeight.bold,
                        fontSize: 16.sp
                      ),
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Container(
                margin: EdgeInsets.only(bottom: 3.h),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: "By creating an account, you agree to Koko's \n",
                    style: TextStyle(
                      color: AppColor.kBlack.withOpacity(0.6),
                      fontSize: 14.sp
                    ),
                    children: const <TextSpan>[
                      TextSpan(
                        text: "Terms of Service",
                        style: TextStyle(
                          color: AppColor.kOrange,
                        ),
                      ),
                      TextSpan(
                        text: " and ",
                      ),
                      TextSpan(
                        text: "Privacy Policy",
                        style: TextStyle(
                          color: AppColor.kOrange,
                        ),
                      ),
                    ]
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
