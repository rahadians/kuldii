import '../providers/cart.dart';
import '../models/product.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../screens/product_detail_screen.dart';
// import '../models/product.dart';

class ProductItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productData = Provider.of<Product>(context, listen: false);
    final cart = Provider.of<Cart>(context, listen: false);

    Icon icnfavorite = Icon(Icons.favorite);
    Icon iconnofavorite = Icon(Icons.favorite_border_outlined);

    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(
              ProductDetailScreen.routeName,
              arguments: productData.id,
            );
          },
          child: Image.network(
            productData.imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        footer: GridTileBar(
          backgroundColor: Colors.black87,
          leading: Consumer<Product>(
            builder: (context, productData, child) => IconButton(
              icon: (productData.isFavorite) ? icnfavorite : iconnofavorite,
              // icon: (productData.isFavorite) ? Icon(Icons.favorite.to):(Icons.favorite_border_outlined),
              color: Theme.of(context).accentColor,
              onPressed: () {
                productData.statusFavo();
              },
            ),
          ),
          title: Text(
            productData.title,
            textAlign: TextAlign.center,
          ),
          trailing: IconButton(
            icon: Icon(
              Icons.shopping_cart,
            ),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                    content: Text("Berhasil ditambahkan"),
                    duration: Duration(microseconds: 3000)),
              );
              cart.addCart(
                  productData.id, productData.title, productData.price);
            },
            color: Theme.of(context).accentColor,
          ),
        ),
      ),
    );
  }
}
