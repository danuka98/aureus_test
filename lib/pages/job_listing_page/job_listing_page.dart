import 'package:aureus/components/card_view_component.dart';
import 'package:aureus/styles/app_color_styles.dart';
import 'package:aureus/utils/example_dataset.dart';
import 'package:aureus/widgets/bottom_sheet_widget.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class JobListingPage extends StatelessWidget {
  const JobListingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: AppColor.kOrange,
            child: Padding(
              padding: EdgeInsets.only(
                top: 6.h,
                left: 4.w,
                right: 4.w,
                bottom: 3.h,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: const [
                      Text('Hi Mark'),
                      Icon(
                        Icons.handshake_rounded,
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 1.2.w, bottom: 5.w),
                    child: Text(
                      'Find The Best Job Here!',
                      style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColor.kWhite.withOpacity(0.2),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(2.w),
                          child: Icon(
                            Icons.search,
                            color: AppColor.kWhite.withOpacity(0.6),
                          ),
                        ),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Start searching for jobs',
                              hintStyle: TextStyle(
                                color: AppColor.kBlack.withOpacity(0.4),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          DefaultTabController(
            length: 2,
            child: Column(
              children: [
                TabBar(
                  indicatorSize: TabBarIndicatorSize.label,
                  indicatorWeight: 0.7.w,
                  indicatorColor: AppColor.kOrange,
                  labelColor: AppColor.kOrange,
                  unselectedLabelColor: AppColor.kGrey,
                  labelStyle: TextStyle(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.bold,
                  ),
                  tabs: const [
                    Tab(text: 'Recent Jobs'),
                    Tab(text: 'Near You'),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: exampleDataset.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(10.w),
                        ),
                      ),
                      builder: (context) {
                        return BottomSheetWidget(
                          siteName: exampleDataset[index]['siteName'],
                          date: exampleDataset[index]['date'],
                          jobTitle: exampleDataset[index]['jobRole'],
                          salary: exampleDataset[index]['salary'],
                          location: exampleDataset[index]['city'],
                        );
                      },
                    );
                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 4.w),
                    child: CardViewComponent(
                      date: exampleDataset[index]['date'],
                      jobTitle: exampleDataset[index]['jobRole'],
                      location: exampleDataset[index]['city'],
                      salary: exampleDataset[index]['salary'],
                      siteName: exampleDataset[index]['siteName'],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
