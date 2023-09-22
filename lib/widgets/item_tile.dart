import 'package:flutter/material.dart';

class ItemTile extends StatefulWidget {
  const ItemTile({super.key, required this.item});
  final String item;
  @override
  State<ItemTile> createState() => _ItemTileState();
}

class _ItemTileState extends State<ItemTile> {
  bool isChecked = false;
  
  
  @override
  Widget build(BuildContext context) {
    return ListTile(
      trailing: ItemCheckbox(
        checkboxState: isChecked, 
        toggleCheckboxState: (bool? checkboxState) {
          setState(() {
            isChecked = checkboxState ?? true;
          });
        },
      ),
      title: Text(
        widget.item,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : TextDecoration.none,
          fontSize: 15, 
          fontWeight: FontWeight.normal, 
          color: Colors.black
        ),
      ),
    );
  }
}



class ItemCheckbox extends StatelessWidget {
  final bool checkboxState;
  final Function(bool?) toggleCheckboxState;

  const ItemCheckbox({super.key, required this.checkboxState, required this.toggleCheckboxState});

  
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: checkboxState, 
      onChanged: toggleCheckboxState,
    );
  }
}