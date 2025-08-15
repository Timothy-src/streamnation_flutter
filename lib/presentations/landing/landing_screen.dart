import 'package:flutter/material.dart';
import 'package:streamnation_flutter/presentations/landing/tabs/home_screen.dart';
import 'package:streamnation_flutter/presentations/landing/tabs/recruits_screen.dart';
import 'package:streamnation_flutter/presentations/landing/tabs/shop_screen.dart';
import 'package:streamnation_flutter/presentations/landing/tabs/wallet_screen.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    HomeScreen(),
    ShopScreen(),
    WalletScreen(),
    RecruitScreen(),
    Center(child: Text("Marketing page coming soon")),
  ];

  void onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: onItemTapped,
        selectedItemColor: Color(0xFF1E2D59),
        unselectedItemColor: Colors.grey,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedLabelStyle: TextStyle(
          fontWeight: FontWeight.w500,
          color: Color(0xFF1E2D59),
        ),
        unselectedLabelStyle: TextStyle(
          fontWeight: FontWeight.w500,
          color: Colors.grey,
        ),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_sharp),
            label: "Shop",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.wallet), label: "Wallet"),
          BottomNavigationBarItem(
            icon: Icon(Icons.people_alt_rounded),
            label: "Recruits",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.volume_up),
            label: "Marketing",
          ),
        ],
      ),
    );
  }
}
