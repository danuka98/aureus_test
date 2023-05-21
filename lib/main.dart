import 'package:aureus/routes/app_router_delegate.dart';
import 'package:beamer/beamer.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, screenType) {
        return BeamerProvider(
          routerDelegate: appRouterDelegate,
          child: MaterialApp.router(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            routeInformationParser: BeamerParser(),
            routerDelegate: appRouterDelegate,
            backButtonDispatcher: BeamerBackButtonDispatcher(delegate: appRouterDelegate),
            // home: const LoginPage(),
          ),
        );
      }
    );
  }
}
