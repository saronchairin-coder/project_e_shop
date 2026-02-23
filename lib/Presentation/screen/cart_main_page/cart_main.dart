import 'package:flutter/material.dart';

class CartMain extends StatefulWidget {
  const CartMain({super.key});

  @override
  State<CartMain> createState() => _CartMainState();
}

class _CartMainState extends State<CartMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(child: Text('cart')),
    );
  }
}
