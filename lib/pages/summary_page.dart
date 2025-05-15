import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/cart.dart';

class SummaryPage extends StatelessWidget {
  const SummaryPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);
    final args = ModalRoute.of(context)!.settings.arguments as Map;

    final name = args['name'];
    final address = args['address'];
    final contact = args['contact'];
    final paymentMethod = args['paymentMethod'];

    return Scaffold(
      appBar: AppBar(
        backgroundColor:  Colors.pink[100],
        title: const Text('Order Summary'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Name: $name', style: const TextStyle(fontSize: 16)),
            Text('Address: $address', style: const TextStyle(fontSize: 16)),
            Text('Contact: $contact', style: const TextStyle(fontSize: 16)),
            Text('Payment: $paymentMethod', style: const TextStyle(fontSize: 16)),
            const SizedBox(height: 20),
            const Text(
              'Items:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Expanded(
              child: ListView(
                children: cart.getUserCart().entries.map((entry) {
                  final flower = entry.key;
                  final quantity = entry.value;
                  return ListTile(
                    title: Text('${flower.name} x$quantity'),
                    subtitle: Text('₱${(double.parse(flower.price) * quantity).toStringAsFixed(2)}'),
                  );
                }).toList(),
              ),
            ),
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Total:',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  '₱${cart.getTotalPrice().toStringAsFixed(2)}',
                  style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                cart.clearCart(); 
                Navigator.pushNamedAndRemoveUntil(context, '/confirmation', (route) => false);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 138, 244, 142),
                minimumSize: const Size.fromHeight(50),
              ),
              child: const Text('Place Order'),
            ),
          ],
        ),
      ),
    );
  }
}
