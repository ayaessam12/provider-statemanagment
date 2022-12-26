import 'package:flutter/material.dart';
import 'items.dart';
class Cart with ChangeNotifier{

List <Item> items=[];
double Price=0.0;

void add(Item item){
  items.add(item);
  Price += item.price!;
  notifyListeners();
}
void remove(Item item){
  items.remove(item);
  Price -= item.price!;
  notifyListeners();
}

int get count{
  return items.length;
}
double get totalPrice{
  return Price;
}
List<Item> get selectedItems{
  return items;
}

}