# aureus

README
This README file provides an overview of the project and explains the packages used. It also includes instructions on how to run widget tests for the HomePage and LoginPage screens.

Packages
The project utilizes the following packages:

responsive_sizer: ^3.1.1
A package that helps make Flutter applications responsive to different screen sizes and orientations.

beamer: ^1.5.3
A package that provides routing and navigation management for Flutter applications.

step_progress_indicator: ^1.0.2
A package that allows you to create customizable step progress indicators in your Flutter application.

flutter_switch: ^0.3.2
A package that provides a customizable switch widget for Flutter applications.

Make sure to include these packages in your pubspec.yaml file and run flutter pub get to fetch and install them before running the project.

#Widget Testing
To run the widget tests for the HomePage and LoginPage, follow the instructions below:

01.Open a terminal or command prompt.

02.Navigate to the project directory.

03.Run the following command to execute the widget tests for the HomePage:

flutter test test/home_page_test.dart

This command will run the widget tests defined in the home_page_test.dart file.

04.Run the following command to execute the widget tests for the LoginPage:

flutter test test/login_page_test.dart

This command will run the widget tests defined in the login_page_test.dart file.

Ensure that you have a connected device or emulator running before running the tests. The tests will execute on the connected device or emulator and provide feedback on the test results.

The widget tests verify the correct display and behavior of the HomePage and LoginPage screens. They simulate user interactions and validate the expected outcomes.
