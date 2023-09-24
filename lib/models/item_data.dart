import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'item.dart';


class ItemsNotifier extends StateNotifier<List<Item>>{
  // Redirect to the super class constructor (:)
  // We initialize the list of Items to an empty list
  ItemsNotifier() : super([]);

  // Let's allow the UI to add items.
  void addItem(Item item) {
    // Since our state is immutable, we are not allowed to do `state.add(todo)`.
    // Instead, we should create a new list of item which contains the previous
    // items and the new one.
    // Using Dart's spread operator (...) 
    state = [...state, item];
    // No need to call "notifyListeners" or anything similar. Calling "state ="
    // will automatically rebuild the UI when necessary.
  }

  // Let's allow removing item
  void removeItem(int itemId) {
    // Again, our state is immutable. So we're making a new list instead of
    // changing the existing list.
    state = [
      for (final item in state)
        if (item.id != itemId) item,
    ];
  }

   // Let's mark a item as completed
  void toggle(int itemId) {
    state = [
      for (final item in state)
      // we're marking only the matching item as completed
      if (item.id == itemId)
        // Once more, since our state is immutable, we need to make a copy
        // of the item. We're using our `copyWith` method implemented before
        // to help with that.
        item.copyWith(isCompleted: !item.isCompleted)
      else
        // other items are not modified
        item,
    ];
  }
}

// Finally, we are using StateNotifierProvider to allow the UI to interact with
// our ItemsNotifier class.
final itemsProvider = StateNotifierProvider<ItemsNotifier, List<Item>>((ref) {
  return ItemsNotifier();
});

