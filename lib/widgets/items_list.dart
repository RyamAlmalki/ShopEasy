import 'package:flutter/material.dart';
import 'package:todo/models/item_data.dart';
import 'package:todo/widgets/item_tile.dart';
import 'package:provider/provider.dart';


class ItemList extends StatelessWidget{
  const ItemList({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ItemData>(
      builder: (context, itemData, child) {
          return ListView.builder(
          itemCount: itemData.itemCount, 
          itemBuilder: (BuildContext context, int index) {  
            final item = itemData.items[index];
            return ItemTile(
              itemTitle: item.name, 
              isChecked: item.isDone, 
              onChanged: (bool? checkboxState) {
                // we updated the item data without having to pass the list as a constructor 
                itemData.updateItems(item);
              },
              onLongPress: () {
                itemData.deleteItems(item);
              },
            );
          },
        );
      },
    );
  }
}

