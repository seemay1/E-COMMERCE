import 'package:flutter/material.dart';

class CheckoutPage extends StatefulWidget {
  const CheckoutPage({super.key});

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  final _formKey = GlobalKey<FormState>();

  String name = '';
  String address = '';
  String contact = '';
  String selectedMethod = 'Cash on Delivery';

  final List<String> methods = [
    'Cash on Delivery',
    'GCash',
    'Credit Card',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink[100],
        title: const Text('Checkout'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              const Text(
                'Shipping Information',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Full Name'),
                validator: (value) => value == null || value.isEmpty ? 'Enter your name' : null,
                onSaved: (value) => name = value!,
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Address'),
                validator: (value) => value == null || value.isEmpty ? 'Enter your address' : null,
                onSaved: (value) => address = value!,
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Contact Number'),
                keyboardType: TextInputType.phone,
                validator: (value) => value == null || value.isEmpty ? 'Enter contact number' : null,
                onSaved: (value) => contact = value!,
              ),
              const SizedBox(height: 20),
              const Text(
                'Payment Method',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              ...methods.map((method) => RadioListTile(
                    title: Text(method),
                    value: method,
                    groupValue: selectedMethod,
                    onChanged: (value) {
                      setState(() {
                        selectedMethod = value.toString();
                      });
                    },
                  )),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    Navigator.pushNamed(
                      context,
                      '/summary',
                      arguments: {
                        'name': name,
                        'address': address,
                        'contact': contact,
                        'paymentMethod': selectedMethod,
                      },
                    );
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 138, 244, 142),
                  minimumSize: const Size.fromHeight(50),
                ),
                child: const Text('Continue to Summary'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
