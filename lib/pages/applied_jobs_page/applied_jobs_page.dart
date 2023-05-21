import 'package:aureus/components/card_view_component.dart';
import 'package:aureus/styles/app_color_styles.dart';
import 'package:aureus/utils/example_dataset.dart';
import 'package:aureus/widgets/bottom_sheet_widget.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class AppliedJobsPage extends StatelessWidget {
  const AppliedJobsPage({super.key});

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
              margin: EdgeInsets.symmetric(vertical: 3.h),
              child: Row(
                children: [
                  Text(
                    'Your Applied Jobs',
                    style: TextStyle(
                      fontSize: 21.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 1.w),
                  Icon(Icons.edit, size: 5.w),
                ],
              ),
            ),
            Text(
              'You applied for 2 jobs',
              style: TextStyle(
                fontSize: 14.sp,
                color: AppColor.kGrey
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 2.h),
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 2,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      showModalBottomSheet(
                        context: context,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(10.w),
                          ),
                        ),
                        isScrollControlled: true,
                        builder: (context) {
                          return DraggableScrollableSheet(
                              expand: false,
                              builder: (context, scrollController) {
                                return SingleChildScrollView(
                                  controller: scrollController,
                                  child: BottomSheetWidget(
                                    siteName: exampleDataset[index]['siteName'],
                                    date: exampleDataset[index]['date'],
                                    jobTitle: exampleDataset[index]['jobRole'],
                                    salary: exampleDataset[index]['salary'],
                                    location: exampleDataset[index]['city'],
                                  ),
                                );
                              });
                        },
                      );
                    },
                    child: CardViewComponent(
                      date: exampleDataset[index]['date'],
                      jobTitle: exampleDataset[index]['jobRole'],
                      location: exampleDataset[index]['city'],
                      salary: exampleDataset[index]['salary'],
                      siteName: exampleDataset[index]['siteName'],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
