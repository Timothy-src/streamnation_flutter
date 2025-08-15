import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({super.key});

  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 231, 240, 251),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(75),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                spreadRadius: 0,
                blurRadius: 6,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            titleSpacing: 0,
            title: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Shop",
                        style: TextStyle(
                          color: Color(0xFF1E2D59),
                          fontWeight: FontWeight.w700,
                          fontSize: 31,
                        ),
                      ),
                      SizedBox(height: 0),
                      Text(
                        "Manage your shop and track orders",
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            centerTitle: false,
            automaticallyImplyLeading: false,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _buildContainers(),
              const SizedBox(height: 32),
              _buildFeatureText(),
              const SizedBox(height: 16),
              _buildProducts(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildContainers() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 155,
          width: 155,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11),
                      color: const Color.fromARGB(255, 193, 255, 225),
                    ),
                    child: Icon(
                      Icons.shop_sharp,
                      color: const Color.fromARGB(255, 17, 46, 18),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Shoplink",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF1E2D59),
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Sell Byfina products",
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w800,
                          color: Colors.grey[500],
                        ),
                      ),
                      Text(
                        "online hassle-free",
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w800,
                          color: Colors.grey[500],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(width: 26),
        Row(
          children: [
            Container(
              height: 155,
              width: 155,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(11),
                          color: const Color.fromARGB(255, 231, 240, 251),
                        ),
                        child: Icon(
                          Icons.timer_rounded,
                          color: const Color.fromARGB(255, 17, 46, 18),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Order History",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF1E2D59),
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            "Tracks and manage your",
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w800,
                              color: Colors.grey[500],
                            ),
                          ),
                          Text(
                            "orders",
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w800,
                              color: Colors.grey[500],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildFeatureText() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Featured Products",
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 19),
        ),
      ],
    );
  }

  Widget _buildProducts() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 340,
          width: 180,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                offset: Offset(0, 3),
                spreadRadius: 0,
                blurRadius: 6,
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 140,
                alignment: Alignment.topCenter,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Color.fromARGB(255, 231, 240, 251),
                ),
                padding: EdgeInsets.all(14),
                child: Image.asset(
                  "assets/streamnation-icon.png",
                  height: 120,
                  width: 120,
                ),
              ),
              SizedBox(height: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 25,
                        width: 100,
                        padding: EdgeInsets.all(6.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: Color.fromARGB(255, 231, 240, 251),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.star,
                              size: 13,
                              color: Color(0xFF1E2D59),
                            ),
                            SizedBox(width: 3),
                            Text(
                              "BEST SELLER",
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF1E2D59),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 6),
                  Text(
                    "INTRO PRICE: FINA",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF1E2D59),
                    ),
                  ),
                  Text(
                    "Brightening Day Kit",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF1E2D59),
                    ),
                  ),
                  Text(
                    "Set",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF1E2D59),
                    ),
                  ),
                  SizedBox(height: 24),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "₱499.00",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF1E2D59),
                            ),
                          ),
                          SizedBox(height: 3),
                          Text(
                            "95 in stock",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 11,
                              color: const Color.fromARGB(255, 37, 132, 86),
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Container(
                        padding: EdgeInsets.all(3),
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Color(0xFF1E2D59),
                        ),
                        child: Icon(Icons.add, color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        Spacer(),
        Container(
          height: 340,
          width: 180,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 3),
                color: Colors.black.withOpacity(0.1),
                blurRadius: 6,
                spreadRadius: 0,
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 140,
                alignment: Alignment.topCenter,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Color.fromARGB(255, 231, 240, 251),
                ),
                padding: EdgeInsets.all(14),
                child: Image.asset(
                  "assets/streamnation-icon.png",
                  height: 120,
                  width: 120,
                ),
              ),
              SizedBox(height: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 25,
                        width: 100,
                        padding: EdgeInsets.all(6.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: Color.fromARGB(255, 231, 240, 251),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(Icons.star, size: 13),
                            SizedBox(width: 3),
                            Text(
                              "BEST SELLER",
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF1E2D59),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 6),
                  Text(
                    "Fina Beauty",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF1E2D59),
                    ),
                  ),
                  Text(
                    "Brightening &",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF1E2D59),
                    ),
                  ),
                  Text(
                    "Clarifying Facial",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF1E2D59),
                    ),
                  ),
                  Text(
                    "Cleanser (100g)",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF1E2D59),
                    ),
                  ),
                  SizedBox(height: 3),
                  Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            "₱100.00",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF1E2D59),
                            ),
                          ),
                          SizedBox(height: 3),
                          Text(
                            "1 in stock",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 11,
                              color: Colors.amber,
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Container(
                        padding: EdgeInsets.all(3.0),
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Color(0xFF1E2D59),
                        ),
                        child: Icon(Icons.add, color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
