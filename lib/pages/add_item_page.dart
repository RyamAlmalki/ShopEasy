import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/item_data.dart';

class AddItemPage extends StatelessWidget {
  AddItemPage({super.key});
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 70,
              ),
    
              const Text('Add Item', style: TextStyle(fontSize: 40, fontWeight: FontWeight.normal, color: Colors.greenAccent),),
              
              const SizedBox(
                height: 50,
              ),
    
               Padding(
                padding: const EdgeInsets.only(right: 30, left: 30),
                child: TextField(
                  controller: _controller,
                  autofocus: true,
                  decoration: const InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 3, color: Colors.greenAccent),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 3, color: Colors.greenAccent),
                    ),
                  ), 
                ),
              ),
              
              const SizedBox(
                height: 10,
              ),
              
              SizedBox(
                width: MediaQuery.of(context).size.width / 1.5,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0.0),
                    ),
                    backgroundColor: Colors.greenAccent, // Background color
                  ),
                  onPressed: (){
                    Provider.of<ItemData>(context, listen: false).addItem(_controller.text);
                    Navigator.pop(context);
                  }, 
                  child: const Text('Add', style: TextStyle(color: Colors.white, fontSize: 20),)
                ),
              ),

              const SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}