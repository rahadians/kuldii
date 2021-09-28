import 'dart:math';
import '../providers/cart.dart';
import 'package:provider/provider.dart';

import '../widgets/badge.dart';

import '../widgets/product_grid.dart';
import 'package:flutter/material.dart';

import '../models/product.dart';
import '../widgets/product_grid.dart';
import './cart_screen.dart';

class ProductsOverviewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MyShop'),
        actions: [
          Consumer<Cart>(
            builder: (context, value, child) {
              return Badge(
                value: value.jumlah.toString(),
                child: IconButton(
                  icon: Icon(Icons.shopping_cart),
                  onPressed: () {
                    Navigator.of(context).pushNamed(CartScreen.routeName);
                  },
                ),

              );
            },
          )
        ],
      ),
      body: Product_Grid(),
    );
  }
}
