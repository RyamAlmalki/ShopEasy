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

<p>Here's an explanation of why this design isn't efficient:</p>


1. **Propagating Unnecessary Data**: When `Task2` and `Task3` receive the `data` parameter but don't use it, they are essentially acting as intermediaries for passing data down the widget tree. This means that the `data` parameter is being unnecessarily propagated through multiple widgets, which can add overhead, especially when dealing with large and complex applications.

2. **Code Maintainability**: As your application grows in complexity, managing and passing data through an ever-expanding widget tree can become challenging and error-prone. It can lead to code that is harder to maintain and understand.

3. **Inefficient Rerendering**: In Flutter, when the parent widget rebuilds (e.g., due to a state change), all its child widgets rebuild as well, even if their properties haven't changed. Inefficiently passing data through many intermediate widgets can trigger unnecessary widget rebuilds and negatively impact performance.

<h3 align="left">State Management in "ShopEasy"</h3>
<p>In "ShopEasy" app, I implemented state management using the hooks_riverpod package. This package helps you manage the state of your application and ensure that changes to the state are reflected in the user interface efficiently.</p>

<p align="center">
    <img width="1200" src="https://github.com/RyamAlmalki/ShopEasy/blob/master/class.png" alt="Material Bread logo">
</p>
<p>Here is a class diagram representing the structure of the application and the flow of data:</p>

<p align="center">
    <img width="1200" src="https://github.com/RyamAlmalki/ShopEasy/blob/master/class2.png?raw=true" alt="Material Bread logo">
</p>

The `ItemsNotifier` class is a crucial part of this application. It extends the `StateNotifier` class and is responsible for managing the state of your shopping items. This class provides the following methods:

- `addItem(item)`: Adds a new item to the shopping list.
- `removeItem(item)`: Removes an item from the shopping list.
- `toggleItem(item)`: Toggles the status (e.g., checked or unchecked) of an item.




