<p align="center">
    <img width="1200" src="https://github.com/RyamAlmalki/ShopEasy/blob/master/banner.png" alt="Material Bread logo">
</p>

<h1 align="left">ShopEasy</h1>
<p>In the "ShopEasy" grocery shopping list app, state management is used to keep track of and update the application's data and user interface based on user interactions and changes in data.  Here's how state management is used in the "ShopEasy" app.</p>

<h1 align="left">What is state?</h1>
<p>In Flutter, state is any data that can change over time and needs to be reflected in the user interface.</p>


<h1 align="left">Why we need ?</h1>
## Code Example

Here's the code for the Flutter application:

```dart
import 'package:flutter/material.dart';

void main() {
runApp(MyApp());
}

class MyApp extends StatelessWidget {
const MyApp({Key? key}) : super(key: key);

// Define your data here
final String data = 'Secret data';

@override
Widget build(BuildContext context) {
 return MaterialApp(
   home: Scaffold(
     appBar: AppBar(
       title: Text(data),
     ),
     body: Task1(data: data),
   ),
 );
}
}

class Task1 extends StatelessWidget {
final String data;

const Task1({Key? key, required this.data}) : super(key: key);

@override
Widget build(BuildContext context) {
 return Task2(data: data);
}
}

class Task2 extends StatelessWidget {
final String data;

const Task2({Key? key, required this.data}) : super(key: key);

@override
Widget build(BuildContext context) {
 return Task3(data: data);
}
}

class Task3 extends StatelessWidget {
final String data;

const Task3({Key? key, required this.data}) : super(key: key);

@override
Widget build(BuildContext context) {
 return Center(
   child: Text(data),
 );
}
}
