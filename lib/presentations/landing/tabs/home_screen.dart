import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 231, 240, 251),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1), // Shadow color
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
                  Image.asset(
                    "assets/streamnation-icon.png",
                    height: 50,
                    width: 50,
                  ),
                  SizedBox(width: 4),
                  Text(
                    "Stream Nation",
                    style: TextStyle(
                      color: Color(0xFF1E2D59),
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                  Spacer(),
                  FaIcon(
                    FontAwesomeIcons.solidEnvelope,
                    color: Color(0xFF1E2D59),
                  ),
                  SizedBox(width: 18),
                  FaIcon(
                    FontAwesomeIcons.solidCircleUser,
                    color: Color(0xFF1E2D59),
                  ),
                  SizedBox(width: 7),
                ],
              ),
            ),
            centerTitle: false,
            automaticallyImplyLeading: false,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _buildPersonalSales(),
              const SizedBox(height: 15),
              _buildGroupSales(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPersonalSales() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(top: 0),
          width: 500,
          height: 255,
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    "Personal Sales",
                    style: TextStyle(
                      color: Color(0xFF1E2D59),
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  Spacer(),
                  FaIcon(
                    FontAwesomeIcons.solidCalendar,
                    color: Color(0xFF1E2D59),
                    size: 18,
                  ),
                  SizedBox(width: 10),
                  Text(
                    "AUGUST 2025",
                    style: TextStyle(
                      color: Color(0xFF1E2D59),
                      fontWeight: FontWeight.w700,
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey[300]!, width: 1),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 22,
                                backgroundColor: Colors.grey[300]!,
                                child: FaIcon(
                                  FontAwesomeIcons.boxArchive,
                                  color: Color(0xFF1E2D59),
                                  size: 22,
                                ),
                              ),
                              SizedBox(width: 9),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "TOTAL",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black,
                                      fontSize: 12,
                                    ),
                                  ),
                                  Text(
                                    "ORDERS",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black,
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 12),
                          Text(
                            "0",
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 23,
                              color: Color(0xFF1E2D59),
                            ),
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Text(
                                "DIRECT",
                                style: TextStyle(
                                  color: Colors.grey[500]!,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 12,
                                ),
                              ),
                              Spacer(),
                              Text(
                                "0",
                                style: TextStyle(
                                  color: Colors.grey[500]!,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),

                          Row(
                            children: [
                              Text(
                                "SHOPLINK",
                                style: TextStyle(
                                  color: Colors.grey[500]!,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 12,
                                ),
                              ),
                              Spacer(),
                              Text(
                                "0",
                                style: TextStyle(
                                  color: Colors.grey[500]!,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(width: 18),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey[300]!, width: 1),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // First row: Icon + texts
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 22,
                                backgroundColor: Colors.grey[300]!,
                                child: FaIcon(
                                  FontAwesomeIcons.coins,
                                  color: Color(0xFF1E2D59),
                                  size: 22,
                                ),
                              ),
                              SizedBox(width: 9),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "TOTAL",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black,
                                      fontSize: 12,
                                    ),
                                  ),
                                  Text(
                                    "PURCHASE",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black,
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),

                          SizedBox(height: 62), // Space between row and price
                          // Price aligned left
                          Text(
                            "₱0.00",
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 23,
                              color: Color(0xFF1E2D59),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildGroupSales() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 500,
          height: 400,
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Group Sales",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF1E2D59),
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(height: 1),
                      Text(
                        "AUGUST 2025",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Colors.grey[500]!,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "₱11,904.00",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF1E2D59),
                      fontSize: 21,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 18),
              _buildProgressBar(),
              SizedBox(height: 20),
              _buildPlaceholderDropDown(),
              SizedBox(height: 11),
              _buildTopPerformer1(),
              SizedBox(height: 11),
              _buildTopPerformer2(),
              SizedBox(height: 16),
              _buildLeaderboardButton(),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildProgressBar() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(
          height: 34,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Positioned.fill(
                child: LinearProgressIndicator(
                  borderRadius: BorderRadius.circular(13),
                  value: 1.0,
                  backgroundColor: Colors.grey[200],
                  valueColor: AlwaysStoppedAnimation<Color>(Color(0xFF1E2D59)),
                ),
              ),
              Text(
                "100%",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildPlaceholderDropDown() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          height: 45,
          padding: EdgeInsets.only(left: 17, right: 17),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            border: Border.all(color: Colors.grey[300]!, width: 1),
          ),
          child: Row(
            children: [
              FaIcon(
                FontAwesomeIcons.trophy,
                color: Color(0xFF1E2D59),
                size: 20,
              ),
              SizedBox(width: 10),
              Text(
                "TOP PERFORMERS",
                style: TextStyle(
                  color: Color(0xFF1E2D59),
                  fontSize: 11,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spacer(),
              Icon(Icons.keyboard_arrow_up),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildTopPerformer1() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          height: 50,
          padding: EdgeInsets.only(left: 23, right: 17),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.grey[200]!,
          ),
          child: Row(
            children: [
              CircleAvatar(radius: 6, backgroundColor: Color(0xFF1E2D59)),
              SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(padding: EdgeInsetsGeometry.only(top: 7)),
                  Text(
                    "Tester FD02",
                    style: TextStyle(
                      color: Color(0xFF1E2D59),
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    "100% of total group sales",
                    style: TextStyle(
                      color: Colors.grey[500]!,
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Spacer(),
              Text(
                "₱11,904.00",
                style: TextStyle(
                  color: Color(0xFF1E2D59),
                  fontWeight: FontWeight.w700,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildTopPerformer2() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 50,
          padding: EdgeInsets.only(left: 23, right: 17),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.grey[200]!,
          ),
          child: Row(
            children: [
              CircleAvatar(radius: 6, backgroundColor: Color(0xFF1E2D59)),
              SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(padding: EdgeInsetsGeometry.only(top: 7)),
                  Text(
                    "Tester FD1",
                    style: TextStyle(
                      color: Color(0xFF1E2D59),
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    "0% of total group sales",
                    style: TextStyle(
                      color: Colors.grey[500]!,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Spacer(),
              Text(
                "₱0.00",
                style: TextStyle(
                  color: Color(0xFF1E2D59),
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildLeaderboardButton() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          height: 49,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Color(0xFF1E2D59),
          ),
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent,
              shadowColor: Colors.transparent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(16),
              ),
              elevation: 0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FaIcon(FontAwesomeIcons.trophy, color: Colors.white),
                SizedBox(width: 10),
                Text(
                  "SEE LEADERBOARD",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
