import 'package:flutter/material.dart';
import 'package:tasks/models/product.dart';

class Details extends StatelessWidget {
  final Product product;
  const Details({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(product.title ?? 'No Title')), 
            // 1 title  text 
      // 2 image image . network
      // 3 price text string 
      // 4 description string 
      // 5 category string
      // 6 rating string 
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.network(
                product.image ?? 'https://via.placeholder.com/200',
                height: 200,
                width: 200,
              ),
            ),
            const SizedBox(height: 20), 

            Text(
              product.title ?? 'No Title',
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),

            Text(
              "Price: \$${product.price}",
              style: const TextStyle(fontSize: 18, color: Colors.green),
            ),
            const SizedBox(height: 10),

            Text(
              "Category: ${product.category}",
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 10),

            Text(
              "Rating: ${product.rating}",
              style: const TextStyle(fontSize: 16, color: Colors.orange),
            ),
            const SizedBox(height: 10),

            Text(
              product.description ?? 'No Description',
              style: const TextStyle(fontSize: 14, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
