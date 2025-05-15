import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Us'),
        backgroundColor: Colors.pink[100],
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: const [
                  Icon(Icons.local_florist, color: Colors.pink, size: 30),
                  SizedBox(width: 8),
                  Text(
                    'Welcome to Fleur Essence!',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              const Text(
                'We are passionate about delivering beautiful flowers for every occasion. '
                'Our shop offers a wide variety of hand-picked bouquets, plants, and custom arrangements to brighten your day.',
                style: TextStyle(fontSize: 16, height: 1.5),
              ),
              const SizedBox(height: 16),
              const Text(
                'Whether it’s a birthday, anniversary, or just because – we’ve got you covered 💐',
                style: TextStyle(fontSize: 16, height: 1.5),
              ),

              const SizedBox(height: 30),
              const Divider(thickness: 1.2),

              const Text(
                '📞 Contact Information',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              Row(
                children: const [
                  Icon(Icons.phone, color: Colors.pink),
                  SizedBox(width: 10),
                  Text('+63 912 345 6789', style: TextStyle(fontSize: 16)),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: const [
                  Icon(Icons.email, color: Colors.pink),
                  SizedBox(width: 10),
                  Text('support@fleuressence.com', style: TextStyle(fontSize: 16)),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Icon(Icons.location_on, color: Colors.pink),
                  SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      '123 Blossom Lane, Floral City, Philippines',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 30),
              const Divider(thickness: 1.2),

              Center(
                child: Text(
                  'Thank you for choosing Fleur Essence 🌸',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey[600],
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
