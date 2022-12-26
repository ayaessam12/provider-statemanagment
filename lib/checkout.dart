import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'cart.dart';
class CheckOut  extends StatefulWidget {
  const CheckOut({Key? key}) : super(key: key);

  @override
  State<CheckOut> createState() => _State();
}

class _State extends State<CheckOut> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
    title: Text('checkout'),
    ),
body: Consumer<Cart>(builder: ( context,cart,child){
  return ListView.builder(itemCount:cart.selectedItems.length, itemBuilder: (context , i){
    return Card(
      child: ListTile(title:Text("${cart.selectedItems[i].name}"),
      trailing: IconButton(icon: Icon(Icons.remove), onPressed: () {cart.remove(cart.selectedItems[i]); },),),
    );


  },);
},



));
  }
}
