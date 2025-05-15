import 'package:ecommerce/models/Flower.dart';
import 'package:flutter/material.dart';

class Order {
  final List<Flower> flowers;
  final double totalPrice;
  final DateTime date;

  Order({
    required this.flowers,
    required this.totalPrice,
    required this.date,
  });
}

class Cart extends ChangeNotifier {
  List<Flower> flowerShop = [
    Flower(
      name: 'Crimson Elegance',
      price: '550',
      description: 'A romantic and timeless bouquet name reflecting the deep red roses and delicate white accents.',
      imagePath: 'lib/images/bouquet1.jpg',
    ),
    Flower(
      name: 'Blushing Elegance',
      price: '500',
      description: 'A romantic and refined arrangement perfect for love notes or heartfelt gestures.',
      imagePath: 'lib/images/bouquet2.jpg',
    ),
    Flower(
      name: 'Sunlit Serenity',
      price: '600',
      description: 'A cheerful and fresh bouquet evoking warmth, joy, and bright mornings.',
      imagePath: 'lib/images/bouquet3.jpg',
    ),
    Flower(
      name: 'Sunlight Symphony',
      price: '650',
      description: 'A cheerful burst of yellow and white blooms that captures the warmth and joy of a sunny day.',
      imagePath: 'lib/images/bouquet4.jpg',
    ),
  ];

  List<Flower> seeAllFlowers = [
    Flower(
      name: 'Orchid Whisper',
      price: '520',
      description: 'A graceful bouquet featuring vibrant purple orchids, symbolizing admiration, dignity, and royalty.',
      imagePath: 'lib/images/bouquet5.jpg',
    ),
    Flower(
      name: 'Peachy Bloom',
      price: '490',
      description: 'A cheerful arrangement in soft peach, expressing warmth and gentle joy.',
      imagePath: 'lib/images/bouquet6.jpg',
    ),
    Flower(
      name: 'Ocean Breeze',
      price: '580',
      description: 'A refreshing blend of blue and white blooms that bring a sense of calm and coastal charm.',
      imagePath: 'lib/images/bouquet7.jpg',
    ),
    Flower(
      name: 'Golden Charm',
      price: '610',
      description: 'Bright sunflowers paired with rustic accents, capturing a sunny countryside vibe.',
      imagePath: 'lib/images/bouquet8.jpg',
    ),
    Flower(
      name: 'Rose Quartz',
      price: '570',
      description: 'Romantic roses in soft blush tones, perfect for expressing gentle love and admiration.',
      imagePath: 'lib/images/bouquet9.jpg',
    ),
    Flower(
      name: 'Whispering Whites',
      price: '550', 
      description: 'A serene mix of white flowers that symbolize peace, elegance, and grace.',
      imagePath: 'lib/images/bouquet10.jpg',
    ),
  ];

  final Map<Flower, int> _userCart = {};

  List<Flower> getFlowerList() => flowerShop;
  List<Flower> get seeAll => seeAllFlowers;
  Map<Flower, int> getUserCart() => _userCart;

  final List<Order> _orderHistory = [];
  List<Order> get orderHistory => _orderHistory;

  void addItemToCart(Flower flower) {
    if (_userCart.containsKey(flower)) {
      _userCart[flower] = _userCart[flower]! + 1;
    } else {
      _userCart[flower] = 1;
    }
    notifyListeners();
  }

  void removeItemFromCart(Flower flower) {
    _userCart.remove(flower);
    notifyListeners();
  }

  void decreaseItemQuantity(Flower flower) {
    if (_userCart.containsKey(flower)) {
      if (_userCart[flower]! > 1) {
        _userCart[flower] = _userCart[flower]! - 1;
      } else {
        _userCart.remove(flower);
      }
    }
    notifyListeners();
  }

  double getTotalPrice() {
    double total = 0.0;
    _userCart.forEach((flower, quantity) {
      total += double.parse(flower.price) * quantity;
    });
    return total;
  }

  void clearCart() {
    _userCart.clear();
    notifyListeners();
  }

  void placeOrder() {
    if (_userCart.isEmpty) return;

    List<Flower> orderItems = [];
    _userCart.forEach((flower, quantity) {
      for (int i = 0; i < quantity; i++) {
        orderItems.add(flower);
      }
    });

    _orderHistory.add(
      Order(
        flowers: orderItems,
        totalPrice: getTotalPrice(),
        date: DateTime.now(),
      ),
    );

    clearCart();
  }
}
