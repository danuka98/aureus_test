import 'package:aureus/components/button_component.dart';
import 'package:aureus/pages/job_apply_page/employment_information.dart';
import 'package:aureus/pages/job_apply_page/review_information.dart';
import 'package:aureus/pages/job_apply_page/uploading_document.dart';
import 'package:aureus/styles/app_color_styles.dart';
import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

const BeamPage jobApplyBeamPage = BeamPage(
  key: ValueKey('jobApply'),
  child: JobApplyPage(),
);

class JobApplyPage extends StatefulWidget {
  const JobApplyPage({super.key});

  @override
  State<JobApplyPage> createState() => _JobApplyPageState();
}

class _JobApplyPageState extends State<JobApplyPage> {
  int _currentIndex = 1;

  void goToNextStep() {
    setState(() {
      if (_currentIndex <= 3) {
        _currentIndex++;
      }
    });
  }

  void goToPreviousStep() {
    setState(() {
      if (_currentIndex > 1) {
        _currentIndex--;
      }
    });
  }

  Widget _buildStepContent(int stepIndex) {
    switch (stepIndex) {
      case 1:
        return const UploadingDocument();
      case 2:
        return const EmploymentInformation();
      case 3:
        return const ReviewInformation();
      default:
        return const SizedBox();
    }
  }

  String getPageName() {
    switch (_currentIndex) {
      case 1:
        return 'Uploading of Documents';
      case 2:
        return 'Employment Information';
      case 3:
        return 'Review Information';
      default:
        return '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 3.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 2.h),
                child: GestureDetector(
                  onTap: () => _currentIndex != 1
                      ? goToPreviousStep()
                      : context.beamBack(),
                  child: Icon(
                    _currentIndex != 1
                        ? Icons.arrow_back_ios
                        : Icons.close_rounded,
                    size: 6.w,
                  ),
                ),
              ),
              Text(
                'Apply To Slack',
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 2.h, bottom: 0.6.h),
                child: Text(
                  getPageName(),
                  style: TextStyle(
                    color: AppColor.kOrange,
                    fontSize: 15.sp,
                  ),
                ),
              ),
              StepProgressIndicator(
                totalSteps: 3,
                currentStep: _currentIndex,
                size: 0.8.w,
                padding: 0,
                selectedColor: AppColor.kOrange,
                unselectedColor: AppColor.kOrange.withOpacity(0.3),
                roundedEdges: Radius.circular(3.w),
              ),
              _buildStepContent(_currentIndex),
              const Spacer(),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 3.h),
                  child: Row(
                    children: [
                      Expanded(
                        child: ButtonComponent(
                          labelName: _currentIndex != 3 ? 'Proceed' : 'Submit',
                          onPressed: () => _currentIndex != 3
                              ? goToNextStep()
                              : context.beamToNamed('/homePage'),
                        ),
                      ),
                    ],
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
