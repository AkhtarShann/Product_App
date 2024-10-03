import 'package:flutter/material.dart';
import '../models/product_model.dart';
import '../widgets/product_tile.dart';
import 'product_detail_screen.dart';

class ProductListScreen extends StatelessWidget {
   ProductListScreen({Key? key}) : super(key: key);

  final List<Product> products =  [
    Product(
      title: 'Mango Juice',
      description: 'This is the Fresh Juice',
      price: 100,
      imageUrl: 'mango.jpg',
    ),
    Product(
      title: 'Orange juice',
      description: 'This is the Fresh Juice',
      price: 200,
      imageUrl: 'orange.jpeg',

    ),
    Product(
      title: 'Banana juice',
      description: 'This is the Fresh Juice',
      price: 300,
      imageUrl:'banana.jpeg',
    ),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Juise List')),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ProductTile(
            product: products[index],
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      ProductDetailScreen(product: products[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
