import 'package:flutter/material.dart';
// import 'package:shoping_cart_models/Models/Model.dart';
import 'package:smart_agri_connect/Models/Model.dart';

class Viewall extends StatelessWidget {
  const Viewall({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Active Listings'),
        backgroundColor: const Color.fromARGB(255, 67, 206, 104),
        centerTitle: true,
      ),
      body: ListView.separated(
        itemCount: products.length,
        padding: const EdgeInsets.all(10),
        separatorBuilder: (context, index) => const SizedBox(height: 10),
        itemBuilder: (context, index) {
          final product = products[index];

          return Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 193, 251, 187),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.network(
                    product.img,
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(width: 15),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(product.item, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                      Text("Price: ${product.prize}"),
                      Text("Available: ${product.avaible}"),
                      Text("Rating: ${product.rating} ⭐"),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
