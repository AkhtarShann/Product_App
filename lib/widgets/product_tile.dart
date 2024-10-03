import 'package:flutter/material.dart';
import '../models/product_model.dart';

class ProductTile extends StatelessWidget {
  final Product product;
  final VoidCallback onTap;

  const ProductTile({
    Key? key,
    required this.product,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8.0),
      child: ListTile(
        leading: Image.asset('assets/imageURL/${product.imageUrl}'),
        title: Text(product.title),
        subtitle: Text(product.description),
        trailing: Text('RS ${product.price.toStringAsFixed(2)}'),
        onTap: onTap,
      ),
    );
  }
}
