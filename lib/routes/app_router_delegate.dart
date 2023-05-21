import 'package:aureus/pages/home_page/home_page.dart';
import 'package:aureus/pages/job_apply_page/job_apply_page.dart';
import 'package:aureus/pages/login_page/login_page.dart';
import 'package:aureus/pages/sign_up_page/sign_up_page.dart';
import 'package:beamer/beamer.dart';

final appRouterDelegate = BeamerDelegate(
  initialPath: '/login',
  transitionDelegate: const NoAnimationTransitionDelegate(),
  locationBuilder: RoutesLocationBuilder(
    routes: {
      '/login' : (context, state, data) => loginBeamPage,
      '/signup' : (context, state, data) => signUpBeamPage,
      '/homePage' : (context, state, data) => homeBeamPage,
      '/jobApply' : (context, state, data) => jobApplyBeamPage,
    },
  ),
);
