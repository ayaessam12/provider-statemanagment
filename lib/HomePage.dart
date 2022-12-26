import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_managment/cart.dart';
import 'package:state_managment/checkout.dart';

import 'items.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Item> items=[
    Item(name:'s20 ultra',price: 2250),
    Item(name: 'iphone',price: 13000),
    Item(name: 'ppo', price: 3450),

  ];
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        appBar: AppBar(
          title: Text(''),
          actions: [
            Row(
              children: [
        IconButton(onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder: (context){
          return CheckOut();
        }));}, icon: (Icon(Icons.add_shopping_cart))),
    Padding(padding:EdgeInsets.only(right: 10),
    child: Consumer<Cart>(builder:( context, cart,child,){
      return Text("${cart.count}");

    },),
    ) ],


            )]),

        body: ListView.builder(itemCount: items.length,itemBuilder: (context , i){
          return Card(child:Consumer<Cart>(builder: (context,cart,child){
            return ListTile(title: Text("${items[i].name}"),
              trailing: IconButton(icon: Icon(Icons.add), onPressed: () { cart.add(items[i]); },),

            );
          },) );
    }
  )
      );
      }
  }


