import 'package:flutter/material.dart';
import 'package:perfume_ecommerce/models/perfume.dart';

class Cart extends StatefulWidget {
  final Perfume? addedPerfume;

  const Cart({super.key, this.addedPerfume});

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  List<Perfume> cartItems = [];

  @override
  void initState() {
    super.initState();

    if (widget.addedPerfume != null) {
      cartItems.add(widget.addedPerfume!);
    }
  }

  void removeFromCart(Perfume perfume) {
    setState(() {
      cartItems.remove(perfume);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (context) => IconButton(
            icon: Icon(Icons.keyboard_double_arrow_left_rounded),
            color: Colors.white,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
        title: ShaderMask(
          shaderCallback: (bounds) => LinearGradient(
            colors: [Color(0xFFFFD700), Colors.amber.shade700],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ).createShader(bounds),
          child: Text(
            "Cart",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 24,
              fontFamily: 'PlayfairDisplay',
              fontWeight: FontWeight.bold,
              color: Colors.white,
              letterSpacing: 2,
              shadows: [
                Shadow(
                  blurRadius: 10,
                  color: Colors.black26,
                  offset: Offset(3, 3),
                ),
              ],
            ),
          ),
        ),
      ),
      body: cartItems.isEmpty
          ? Center(
              child: Text(
                "Your Cart is Empty",
                style: TextStyle(fontSize: 24),
              ),
            )
          : ListView.builder(
              itemCount: cartItems.length,
              itemBuilder: (context, index) {
                final perfume = cartItems[index];
                return ListTile(
                  contentPadding: EdgeInsets.all(8),
                  leading: Image.asset(
                    perfume.imagePath,
                    height: 50,
                    width: 50,
                    fit: BoxFit.contain,
                  ),
                  title: Text(perfume.name),
                  subtitle: Text("\$${perfume.price}"),
                  trailing: IconButton(
                    icon: Icon(Icons.remove_shopping_cart),
                    onPressed: () {
                      // Remove perfume from the cart
                      removeFromCart(perfume);
                    },
                  ),
                );
              },
            ),
    );
  }
}
