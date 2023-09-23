class Item{

  final String name;
  bool isDone;

  Item({ required this.name, this.isDone = false});

  void toggleDone(){
    isDone = !isDone;
  }
}