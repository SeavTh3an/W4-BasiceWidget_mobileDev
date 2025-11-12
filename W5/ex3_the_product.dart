import 'package:flutter/material.dart';

enum Product {
  dart(
    title: 'Dart',
    description: 'the best object language',
    path: 'assets/images/ex3/dart.png',
  ),
  flutter(
    title: 'Flutter',
    description: 'the best mobile widget library',
    path: 'assets/images/ex3/flutter.png',
  ),
  firebase(
    title: 'Firebase',
    description: 'the best cloud database',
    path: 'assets/images/ex3/firebase.png',
  );

  final String title;
  final String description;
  final String path;

  const Product({
    required this.title,
    required this.description,
    required this.path,
  });
}

void main() {
  runApp(MaterialApp(
    home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(title: const Text('Product')),
        body: const Padding(
          padding: EdgeInsets.all(40),
            child: Column(
              children: [
                ProductCard(product: Product.dart),
                ProductCard(product: Product.flutter),
                ProductCard(product: Product.firebase)
            ],
          ),
        ),
      ),
  ) );
}

class ProductCard extends StatelessWidget {
  final Product product;
  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Card(
        color: Colors.white,
        elevation: 8,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(product.path, height: 60, width: 60),
              const SizedBox(height: 12),
              Text(
                product.title,
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Text(
                product.description,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
