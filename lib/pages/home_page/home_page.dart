import 'package:aureus/pages/applied_jobs_page/applied_jobs_page.dart';
import 'package:aureus/pages/job_listing_page/job_listing_page.dart';
import 'package:aureus/pages/profile_page/profile_page.dart';
import 'package:aureus/styles/app_color_styles.dart';
import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

const BeamPage homeBeamPage = BeamPage(
  key: ValueKey('homePage'),
  child: HomePage(),
);

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const JobListingPage(),
    const AppliedJobsPage(),
    const ProfilePage(),
  ];

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: AppColor.kOrange,
        onTap: _onTabTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Job Listing',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.edit),
            label: 'Applied Jobs',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
