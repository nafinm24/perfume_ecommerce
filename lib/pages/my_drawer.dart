import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color.fromARGB(255, 28, 28, 28),
      child: Column(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/landscape_perfume/land2.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(),
          ),
          ListTile(
            leading: Icon(Icons.home_filled, color: Colors.white),
            title: Text("Home",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'PlayfairDisplay',
                  fontWeight: FontWeight.bold,
                )),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.shopping_bag_rounded, color: Colors.white),
            title: Text("Shop",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'PlayfairDisplay',
                  fontWeight: FontWeight.bold,
                )),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.shopping_cart_rounded, color: Colors.white),
            title: Text("Cart",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'PlayfairDisplay',
                  fontWeight: FontWeight.bold,
                )),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/cart');
            },
          ),
          ListTile(
            leading: Icon(Icons.settings_rounded, color: Colors.white),
            title: Text("Settings",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'PlayfairDisplay',
                  fontWeight: FontWeight.bold,
                )),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.info_outline_rounded, color: Colors.white),
            title: Text("About Us",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'PlayfairDisplay',
                  fontWeight: FontWeight.bold,
                )),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
