import 'package:flutter/material.dart';

// An immutable model typically refers to a design pattern where 
// objects or data structures cannot be modified after they are created
// While it might seem inefficient at first glance, there are several advantages to this approach
// Predictable Behavior, Simplifies Debugging ...
@immutable
class Item{
  const Item({required this.name, required this.isCompleted, required this.id});

  // All properties should be `final` on our class.
  final int id;
  final String name;
  final bool isCompleted;

  // copyWith is a method that is used for creating a copy of an
  // object while allowing you to modify some of its properties in the process.
  Item copyWith({int? id, String? name, bool? isCompleted}) {
    return Item(
      id: id ?? this.id,
      name: name ?? this.name,
      isCompleted: isCompleted ?? this.isCompleted,
    );
  }
}