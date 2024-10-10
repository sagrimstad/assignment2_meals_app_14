# Assignment 02, Meals App enhancement

Our submission of the assigment 02 in the course IDATA2503.

Most of the the code in this application is from the Udemy course "[Flutter & Dart - The Complete Guide [2024 Edition]](https://www.udemy.com/course/learn-flutter-dart-to-build-ios-android-apps/?couponCode=KEEPLEARNING)" section 8 & 9. 

However, we have made some alterations and some additions, like:
- Changed the color scheme
- A "Try your luck" button/functionality

## User Stories
"I want functionality that i can "try my luck" with different meals, so if i don't know what to make, I can click a button that takes me to a random meal."  

## App Architecture
This application is build up using the Flutter framework and the programming language Dart. In this application we use different screens and switch between them using a provider, more speseficly [Riverpod](https://riverpod.dev/) which is imported using the import statement: "import 'package:flutter_riverpod/flutter_riverpod.dart';"

Rivepod allows us to send and access dynamic data across the entire application where it is needed without sending the data to every class.

## Class Diagram
In github repo

## Additional features
We have created an "Try your luck" feature. A new button appears in the drawer that when pressed, shows you a new random meal. 