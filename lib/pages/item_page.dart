import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../models/item_data.dart';
import '../widgets/items_list.dart';
import 'add_item_page.dart';


class  ItemsPage extends ConsumerWidget {
  const ItemsPage({super.key});


  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // rebuild the widget when the items list changes
    final itemsNotifier = ref.read(itemsProvider);

    return Scaffold(
      backgroundColor: Colors.greenAccent,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Padding(
            padding: const EdgeInsets.only(top: 100, left: 30, right: 30, bottom: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.white,
                  child: Icon(Icons.shopping_cart, color: Colors.greenAccent, size: 30,),
                ),
                const SizedBox(height: 10,),
                const Text('ShopEasy', style: TextStyle(fontSize: 50, fontWeight: FontWeight.w700, color: Colors.white),),
                Text('${itemsNotifier.length} items', style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: Colors.white),),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), 
                  topRight: Radius.circular(30)
                )
              ),
              child: const ItemList()
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.greenAccent, 
        child: const Icon(Icons.add, color: Colors.white,),
        onPressed: () {  
          showModalBottomSheet(
            isScrollControlled: true,
            context: context, 
            builder: (context) => AddItemPage(
            ),
          );
        },
      ),
    );
  }
}



