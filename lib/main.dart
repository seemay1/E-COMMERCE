import 'package:flutter/material.dart';
import 'pages/intro_page.dart';
import 'package:provider/provider.dart';
import 'models/cart.dart';
import 'pages/cart_page.dart';
import 'pages/checkout_page.dart'; 
import 'pages/home_page.dart';   
import 'pages/summary_page.dart';
import 'pages/confirmation_page.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => Cart(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flower Shop',
      home: const IntroPage(), 
      routes: {
        '/intro': (context) => const IntroPage(),
        '/home': (context) => const HomePage(),
        '/cart': (context) => const CartPage(),
        '/checkout': (context) => const CheckoutPage(),
        '/summary': (context) => const SummaryPage(),
        '/confirmation': (context) => const ConfirmationPage(),
      },
    );
  }
}
