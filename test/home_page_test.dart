import 'package:aureus/pages/applied_jobs_page/applied_jobs_page.dart';
import 'package:aureus/pages/home_page/home_page.dart';
import 'package:aureus/pages/job_listing_page/job_listing_page.dart';
import 'package:aureus/pages/profile_page/profile_page.dart';
import 'package:aureus/routes/app_router_delegate.dart';
import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() {
  testWidgets('HomePage displays correctly', (WidgetTester tester) async {
    // Build the HomePage
    await tester.pumpWidget(ResponsiveSizer(
        builder: (context, orientation, screenType) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home: HomePage(),
          );
        },
      ),);

    // Verify that the JobListingPage is displayed by default
    expect(find.byType(JobListingPage), findsOneWidget);
    expect(find.byType(AppliedJobsPage), findsNothing);
    expect(find.byType(ProfilePage), findsNothing);

    // Tap on the Applied Jobs tab
    await tester.tap(find.text('Applied Jobs'));
    await tester.pump();

    // Verify that the AppliedJobsPage is displayed
    expect(find.byType(JobListingPage), findsNothing);
    expect(find.byType(AppliedJobsPage), findsOneWidget);
    expect(find.byType(ProfilePage), findsNothing);

    // Tap on the Profile tab
    await tester.tap(find.text('Profile'));
    await tester.pump();

    // Verify that the ProfilePage is displayed
    expect(find.byType(JobListingPage), findsNothing);
    expect(find.byType(AppliedJobsPage), findsNothing);
    expect(find.byType(ProfilePage), findsOneWidget);
  });
}
