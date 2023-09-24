

<p align="center">
    <img width="1200" src="https://github.com/RyamAlmalki/ShopEasy/blob/master/banner.png" alt="ShopEasy Logo">
</p>

<h2 align="center">ShopEasy</h2>

<p align="center">ShopEasy is a grocery shopping list app built with Flutter. This README explains the concept of state management in the app.</p>

<p align="center">
    <img width="1200" src="https://github.com/RyamAlmalki/ShopEasy/blob/master/demo.png" alt="ShopEasy Logo">
</p>

<h3 align="left">Understanding State in Flutter</h3>
<p>In Flutter, "state" refers to any data that can change over time and needs to be reflected in the user interface. In other words, it's the dynamic information that makes the app interactive and responsive.</p>

<h3 align="left">Why I Have Done This State Management?</h3>
<p>Consider this example:</p>

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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

// ... (Task1, Task2, Task3 widgets)
```

<p>In this code, data is passed down from Task1 to Task2 and then to Task3. However, Task2 and Task3 don't use data directly. Instead, they pass it down further, creating a less efficient and maintainable design. Here's why:</p>

1. **Propagating Unnecessary Data**: Task2 and Task3 act as intermediaries for passing data down the widget tree, even when they don't use it themselves. This can lead to unnecessary data propagation and overhead.

2. **Code Maintainability**: As the app grows, managing and passing data through an expanding widget tree becomes challenging and error-prone.

3. **Inefficient Rerendering**: Inefficient data passing can trigger unnecessary widget rebuilds, impacting performance.

<h3 align="left">State Management in ShopEasy</h3>
<p>In ShopEasy, I have implemented state management using the hooks_riverpod package. This package streamlines state management, ensuring changes in data are efficiently reflected in the UI. Let's explore how it works:</p>

<p align="center">
    <img width="1200" src="https://github.com/RyamAlmalki/ShopEasy/blob/master/class.png" alt="ShopEasy Class Diagram">
</p>

<p>The core of state management in ShopEasy is the `ItemsNotifier` class. It extends `StateNotifier` and manages the shopping list's state. It offers methods like `addItem`, `removeItem`, and `toggleItem` to interact with the state.</p>

<p align="center">
    <img width="1200" src="https://github.com/RyamAlmalki/ShopEasy/blob/master/class2.png?raw=true" alt="ShopEasy Class Diagram 2">
</p>

<p>In the app's entry point, I wrap everything in a `ProviderScope`. This establishes a central hub for state management, storing provider states and facilitating data sharing across the app. It ensures data consistency and accessibility throughout the app.</p>

<p align="center">
    <img width="1200" src="https://github.com/RyamAlmalki/ShopEasy/blob/master/class3.png" alt="ShopEasy Class Diagram 3">
</p>

<h3 align="left">WidgetRef, ref.read, and watch</h3>
<p>Within the build methods of the widgets, I use the `WidgetRef ref` parameter to access the `itemsProvider` and work with state management logic defined in `ItemsNotifier`. Specifically, I use `ref.read` to access the state and perform operations related to state management. Additionally, I use the `watch` method provided by hooks_riverpod to subscribe to changes in a provider's state. This ensures efficient UI updates in response to state changes without unnecessary widget rebuilds.</p>

<p align="center">
    <img width="1200" src="https://github.com/RyamAlmalki/ShopEasy/blob/master/class4.png" alt="ShopEasy Class Diagram 4">
</p>

<p>State management in ShopEasy ensures that your grocery shopping experience is seamless and responsive, allowing you to manage your shopping list efficiently.</p>

---

<p align="center"><b>Explore ShopEasy and start organizing your shopping list effortlessly!</b></p>
```

These changes now reflect that you have implemented state management and provide a clear understanding of its significance in your project.
