import '../providers/all_products.dart';

import '../models/product.dart';
import 'package:provider/provider.dart';
import '../widgets/product_item.dart';
import 'package:flutter/material.dart';

class Product_Grid extends StatelessWidget {
  const Product_Grid({
    Key? key,
    required this.loadedProducts,
  }) : super(key: key);

  final List<Product> loadedProducts;

  @override
  Widget build(BuildContext context) {
    final productData = Provider.of<Products>(context);
    final allproduct = productData.allproducts;

    return GridView.builder(
      padding: const EdgeInsets.all(10.0),
      itemCount: allproduct.length,
      itemBuilder: (ctx, i) => ProductItem(
        allproduct[i].id,
        allproduct[i].title,
        allproduct [i].imageUrl,
      ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
    );
  }
}
