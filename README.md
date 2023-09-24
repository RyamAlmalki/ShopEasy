<p align="center">
    <img width="1200" src="https://github.com/RyamAlmalki/ShopEasy/blob/master/banner.png" alt="Material Bread logo">
</p>

<h3 align="left">ShopEasy</h3>
<p>In the "ShopEasy" grocery shopping list app, state management is used to keep track of and update the application's data and user interface based on user interactions and changes in data.  Here's how state management is used in the "ShopEasy" app.</p>

<h3 align="left">What is state?</h3>
<p>In Flutter, state is any data that can change over time and needs to be reflected in the user interface.</p>


<h3 align="left">Why we need State Management?</h3>


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
```

<p>In the provided code, Task2 and Task3 do receive the data parameter from their parent widget, Task1. However, they don't directly use this data parameter in their build methods. Instead, they pass it further down the widget tree without using it themselves. This design may not be the most efficient or optimal approach, and it highlights a situation where state management could be more efficient and organized.
</p>
