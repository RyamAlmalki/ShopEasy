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
            return ItemTile(
              itemTitle: itemData.items[index].name, 
              isChecked: itemData.items[index].isDone, 
              onChanged: (bool? checkboxState) {
                // setState(() {
                //   Provider.of<ItemData>(context).items[index].isDone = checkboxState!;
                // });
              },
            );
          },
        );
      },
    );
  }
}

