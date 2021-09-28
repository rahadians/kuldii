import '../models/cart_item.dart';

import '../providers/cart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  static const routeName = '/Cart';

  @override
  Widget build(BuildContext context) {
    final cartData = Provider.of<Cart>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        title: Text("Cart"),
      ),
      body: Column(
        children: [
          Card(
              margin: EdgeInsets.all(20),
              child: Container(
                padding: EdgeInsets.all(20),
                child: Text(
                  "Total : \Rp.  ${cartData.totalAmount} ",
                  style: TextStyle(fontSize: 35),
                ),
              )),
          Expanded(
            child: ListView.builder(
              itemCount: cartData.jumlah,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text("${cartData.Items.values.toList()[index].title}"),
                  subtitle: Text("${cartData.Items.values.toList()[index].qty}"),
                  trailing: Container(
                    child: Text("\Rp. ${cartData.Items.values.toList()[index].qty * cartData.Items.values.toList()[index].price}"),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
