import 'package:flutter/material.dart';
import 'package:perfume_ecommerce/data/data.dart';
import 'package:perfume_ecommerce/pages/cart.dart';

class PerfumeBox extends StatelessWidget {
  const PerfumeBox({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Align(
      alignment: Alignment.topCenter,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Text(
              'Our Collection',
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'PlayfairDisplay',
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 255, 255, 255),
              ),
            ),
          ),
          SizedBox(
            height: screenHeight * 0.35,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: perfumes.map((perfume) {
                  return Container(
                    width: screenWidth * 0.35,
                    height: screenHeight * 0.35,
                    margin: EdgeInsets.symmetric(horizontal: 8),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 6,
                          offset: Offset(2, 2),
                        ),
                      ],
                    ),
                    child: Stack(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              perfume.imagePath,
                              height: screenHeight * 0.17,
                              fit: BoxFit.contain,
                            ),
                            SizedBox(height: 10),
                            Text(
                              perfume.name,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              "\$${perfume.price}",
                              style: TextStyle(
                                color: Colors.amber,
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        Positioned(
                          bottom: 5,
                          right: 5,
                          child: IconButton(
                            icon: Icon(
                              Icons.add_shopping_cart,
                              color: Colors.white,
                            ),
                            iconSize: 20,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Cart(
                                    addedPerfume: perfume,
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
