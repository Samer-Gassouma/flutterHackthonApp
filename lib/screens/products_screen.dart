import 'package:flutter/material.dart';
import 'package:hackathon/widget/product_item.dart';

class ProductsScreen extends StatefulWidget {
  const ProductsScreen({super.key});

  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Products Screen'),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: ListView(
          children: [
            ProductItem(),
            ProductItem(),
            ProductItem(),
            ProductItem(),
            ProductItem(),
            ProductItem(),
          ],
        ),
      ),
    );
  }
}
