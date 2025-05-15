import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/Flower.dart';
import '../models/cart.dart';

class FlowerDetailPage extends StatelessWidget {
  final Flower flower;

  const FlowerDetailPage({super.key, required this.flower});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(flower.name),
        backgroundColor: Colors.pink[100],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  flower.imagePath,
                  height: 300,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  flower.name,
                  style: const TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  '₱${flower.price}',
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  flower.description,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.black87,
                  ),
                ),
              ),
              const SizedBox(height: 80), 
            ],
          ),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.pink[100],
        child: const Icon(Icons.add),
        onPressed: () {
          Provider.of<Cart>(context, listen: false).addItemToCart(flower);
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('${flower.name} added to cart!'),
              duration: Duration(seconds: 2),
            ),
          );
        },
      ),
    );
  }
}
