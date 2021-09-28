import '../widgets/badge.dart';

import '../providers/cart.dart';
import 'package:provider/provider.dart';

import '../providers/all_products.dart';
import 'package:flutter/material.dart';

import 'cart_screen.dart';

class ProductDetailScreen extends StatelessWidget {
  static const routeName = '/product-detail';

  @override
  Widget build(BuildContext context) {
    final productId =
        ModalRoute.of(context)!.settings.arguments as String; // is the id!
    final product = Provider.of<Products>(context).findByID(productId);
    final cart = Provider.of<Cart>(context, listen: false);

    return Scaffold(
        appBar: AppBar(
          title: Text('Product Details'),
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
        body: Column(
          children: [
            Container(
              width: double.infinity,
              height: 250,
              child: Image.network(
                "${product.imageUrl}",
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text("${product.title}",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(
              height: 5,
            ),
            Text("${product.description}",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(
              height: 5,
            ),
            Text("\Rp. ${product.price}",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(
              height: 5,
            ),
            OutlinedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                        content: Text("Berhasil ditambahkan"),
                        duration: Duration(microseconds: 3000)),
                  );
                  cart.addCart(product.id, product.title, product.price);
                },
                child: Text(
                  "Add To Cart",
                  style: TextStyle(fontSize: 10),
                ))
          ],
        ));
  }
}
