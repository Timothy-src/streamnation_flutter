import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WalletScreen extends StatefulWidget {
  const WalletScreen({super.key});

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsetsGeometry.all(24.0),
            child: Column(
              children: [
                _buildHeader(),
                const SizedBox(height: 24),
                _buildAvailableBalance(),
                SizedBox(height: 28),
                _buildTransactionText(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "My Wallet",
                  style: TextStyle(
                    color: Color(0xFF1E2D59),
                    fontWeight: FontWeight.bold,
                    fontSize: 32,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  "Manage your earnings, withdraw funds, and",
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontWeight: FontWeight.w700,
                    fontSize: 13,
                  ),
                ),
                Text(
                  "track your payment history",
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontWeight: FontWeight.w700,
                    fontSize: 13,
                  ),
                ),
              ],
            ),
            Spacer(),
            Icon(Icons.settings_outlined),
          ],
        ),
      ],
    );
  }

  Widget _buildAvailableBalance() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 200,
          padding: EdgeInsets.all(24.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: Color(0xFF1E2D59),
            boxShadow: [
              BoxShadow(offset: Offset(0, 1), spreadRadius: 0, blurRadius: 1),
            ],
          ),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.wallet, color: Colors.white),
                  SizedBox(width: 10),
                  Text(
                    "AVAILABLE BALANCE",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Spacer(),
                  Icon(Icons.visibility_outlined, color: Colors.white),
                ],
              ),
              SizedBox(height: 25),
              _buildBalanceText(),
              SizedBox(height: 19),
              _buildDivider(),
              SizedBox(height: 10),
              _buildOutstandingBal(),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildBalanceText() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "PHP",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        SizedBox(width: 5),
        Text(
          "0",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
      ],
    );
  }

  Widget _buildDivider() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [Expanded(child: Divider(color: Colors.white))],
    );
  }

  Widget _buildOutstandingBal() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(Icons.arrow_downward, color: Colors.white),
        SizedBox(width: 10),
        Text(
          "OUTSTANDING BALANCE",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
        ),
        Spacer(),
        Text(
          "PHP",
          style: TextStyle(
            color: Colors.grey[300],
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(width: 5),
        Text(
          "0.00",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
        ),
      ],
    );
  }

  Widget _buildTransactionText() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Recent Transactions"),
        Spacer(),
        Container(
          height: 40,
          width: 80,
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: Color.fromARGB(255, 231, 240, 251),
          ),
          child: Text("View All", style: TextStyle(fontSize: 13)),
        ),
      ],
    );
  }
}
