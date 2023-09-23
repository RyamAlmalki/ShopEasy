import 'package:flutter/material.dart';

import 'item.dart';

// provides change notification to its listeners
class ItemData extends ChangeNotifier{

  final List<Item> _items = [
    // Items
  ];
  
  int get itemCount{
    return _items.length;
  }

  List<Item> get items{
    return _items;
  }

  void addItem(name){
    _items.add(Item(name: name));
    notifyListeners();
  }

  void updateItems(Item item){
    item.toggleDone();
    notifyListeners();
  }

  void deleteItems(Item item){
    _items.remove(item);
    notifyListeners();
  }
}