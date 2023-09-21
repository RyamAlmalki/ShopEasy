import 'package:flutter/material.dart';

class TaskPage extends StatefulWidget {
  const TaskPage({super.key});

  @override
  State<TaskPage> createState() => _TaskPageState();
}


class _TaskPageState extends State<TaskPage> {
  List shoppingList = ['burger', 'coffee', 'oil'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 100, left: 30, right: 30, bottom: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.white,
                  child: Icon(Icons.shopping_cart, color: Colors.greenAccent, size: 30,),
                ),
                SizedBox(height: 10,),
                Text('ShopEasy', style: TextStyle(fontSize: 50, fontWeight: FontWeight.w700, color: Colors.white),),
                Text('12 Items', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: Colors.white),),
              ],
            ),
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), 
                  topRight: Radius.circular(30)
                )
              ),
              child: ListView.builder(
                itemCount: shoppingList.length,
                itemBuilder: (BuildContext context, int index) {  
                  return ListTile(
                    title: Text('${shoppingList[index]}', style: const TextStyle(fontSize: 15, fontWeight: FontWeight.normal, color: Colors.black),),
                  );
                },
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.greenAccent, 
        child: const Icon(Icons.add, color: Colors.white,),
        onPressed: () {  
        },
      ),
    );
  }
} 