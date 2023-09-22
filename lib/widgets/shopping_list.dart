import 'package:flutter/material.dart';
import 'package:todo/widgets/item_tile.dart';

class ShoppingList extends StatelessWidget {
  const ShoppingList({
    super.key,
    required this.shoppingList,
  });

  final List shoppingList;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: shoppingList.length,
      itemBuilder: (BuildContext context, int index) {  
        return ItemTile(item: shoppingList[index]);
      },
    );
  }
}
