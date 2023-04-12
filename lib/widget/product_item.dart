import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/product.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({super.key});

  // final Product product;

  // ProductItem({required this.product});

  @override
  Widget build(BuildContext context) {
    final product = Provider.of<Product>(context, listen: false);
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        child: GestureDetector(
          onTap: () {},
          child: Image.network(product.imageUrl, fit: BoxFit.contain, ),
          
        ),
        footer: GridTileBar(
          backgroundColor: Colors.black54,
          subtitle: Consumer<Product>(
            builder: (ctx, product, _) => Text(
            product.title,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Theme.of(context).accentColor,
              fontSize: 22,
              //fontWeight: FontWeight.bold,
              //fontFamily: 'iCiel'
            ),
          ),
          )
        ),
      ),
    );
  }
}
