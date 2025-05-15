import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/Flower.dart';
import '../models/cart.dart';
import 'flower_detail_page.dart';

class SeeAllPage extends StatelessWidget {
  const SeeAllPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Flower> allFlowers = Provider.of<Cart>(context).seeAllFlowers + Provider.of<Cart>(context).flowerShop;

    return Scaffold(
      appBar: AppBar(
        title: const Text('All Flowers'),
        backgroundColor: Colors.pink[100],
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: allFlowers.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, 
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 3 / 4,
        ),
        itemBuilder: (context, index) {
          final flower = allFlowers[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FlowerDetailPage(flower: flower), 
                ),
              );
            },
            child: Column(
              children: [
                Expanded(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(flower.imagePath, fit: BoxFit.cover),
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  flower.name,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
