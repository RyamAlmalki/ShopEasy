import 'package:flutter/material.dart';


class ItemTile extends StatelessWidget {
  final bool isChecked;
  final String itemTitle;
  final Function(bool?) onChanged;
  final Function() onLongPress;
  const ItemTile({super.key, required this.itemTitle, required this.isChecked, required this.onChanged, required this.onLongPress});
  
  @override
  Widget build(BuildContext context) {
    return ListTile(
      trailing: Checkbox(
        value: isChecked, 
        onChanged: onChanged
      ),
      title: Text(
        itemTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : TextDecoration.none,
          fontSize: 15, 
          fontWeight: FontWeight.normal, 
          color: Colors.black
        ),
      ),
      onLongPress: onLongPress
    );
  }
}



