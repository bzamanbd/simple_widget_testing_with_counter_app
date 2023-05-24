# Widget Testing in Flutter

Here we will try to learn the basic Widget Testing using the flutter default Counter App

## Let Start Widget Testing step by step
Step1: First of all we need to create a file inside the test directory of our project. The name of the file should be according to the name of the screen / page which we want to test (my case home_page_test.dart). It is important to add “test.dart” with the file name.

Step2: In that test file we need to call the main function “void main(){}”.

Step3: In the main method call the “testWidgets” asynchronous method which is provided by the “flutter_test” dependency which is the flutter default dev_dependency for testing.

Step4: In the “testWidgets” method with the help of widgetTester we need to pump the page/screen which  we want to test( my case MaterialApp(home: HomePage()) ).

Step5: Need to find out all the widgets of that page which we want to test with the help of the “find”, the CommonFinders of the “flutter_test” dependency. 

Step6: Now we can start testing using the “expect” method which is provided by  the “flutter_test” dependency. 

“tester.tap()” helps us to simulate the tap action of the button
“tester.pump()” helps us to rebuild the UI (same setstate).

It's very basic for widget testing in flutter. 

Thanks to all of you

Happy coding……..

![Screenshot (16)](https://github.com/bzamanbd/simple_widget_testing_with_counter_app/assets/90719674/71e0ce20-2aa8-406f-aef8-215267ff2c89)



