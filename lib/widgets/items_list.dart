import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:todo/models/item_data.dart';
import 'package:todo/widgets/item_tile.dart';



class ItemList extends ConsumerWidget{
  const ItemList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
      // rebuild the widget when the item list changes
      final itemsNotifier = ref.watch(itemsProvider);
      
      return ListView.builder(
      itemCount: itemsNotifier.length, 
      itemBuilder: (BuildContext context, int index) {  
        final item = itemsNotifier[index];
        return ItemTile(
          itemTitle: item.name, 
          isChecked: item.isCompleted, 
          onChanged: (bool? checkboxState) {
            ref.read(itemsProvider.notifier).toggle(item.id);
          },
          onLongPress: () {
            ref.read(itemsProvider.notifier).removeItem(item.id);
          },
        );
      },
    );  
  }
}

