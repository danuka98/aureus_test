import 'package:aureus/components/button_component.dart';
import 'package:aureus/components/text_form_component.dart';
import 'package:aureus/routes/app_router_delegate.dart';
import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() {
  testWidgets('LoginPage displays correctly', (WidgetTester tester) async {
    await tester.pumpWidget(
      ResponsiveSizer(
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
              backButtonDispatcher:
                  BeamerBackButtonDispatcher(delegate: appRouterDelegate),
            ),
          );
        },
      ),
    );

    // Verify the presence of key widgets in the LoginPage
    expect(find.byType(TextFormComponent), findsNWidgets(2));
    expect(find.text('Forgot Password?'), findsOneWidget);
    expect(find.byType(ButtonComponent), findsOneWidget);
    expect(find.text("Don't have an account?"), findsOneWidget);
    expect(find.text('Sign Up'), findsOneWidget);

    // Verify navigation to homePage
    await tester.tap(find.text('Login'));
    await tester.pumpAndSettle();

    final currentConfiguration = appRouterDelegate.currentConfiguration;
    expect(currentConfiguration?.location, '/homePage');
    // Add assertions for the content of the homePage if needed

    // Navigate back to LoginPage
    appRouterDelegate.beamToNamed('/login');
    await tester.pumpAndSettle();

  });
}
