import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RecruitScreen extends StatefulWidget {
  const RecruitScreen({super.key});

  @override
  State<RecruitScreen> createState() => _RecruitScreenState();
}

class _RecruitScreenState extends State<RecruitScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 231, 240, 251),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(24.0),
          child: Column(
            children: [
              _buildHeader(),
              const SizedBox(height: 22),
              _buildContainer(),
              const SizedBox(height: 22),
              _buildRecruitmentCode(),
              const SizedBox(height: 22),
              _buildTopPerformers(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Recruitment",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 33,
            color: Color(0xFF1E2D59),
          ),
        ),
        SizedBox(height: 5),
        Text(
          "Manage you team growth and track recruitment progress",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 13,
            color: Colors.grey[700],
          ),
        ),
      ],
    );
  }

  Widget _buildContainer() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          padding: EdgeInsets.all(20.0),
          height: 210,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: Color(0xFF1E2D59),
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 4),
                spreadRadius: 0,
                blurRadius: 10,
                color: Colors.black12,
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "TOTAL RECRUITS",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(width: 20),
                      Text(
                        "2",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "THIS MONTH",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        "2",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.all(8.0),
                        height: 50,
                        width: 55,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.white.withOpacity(0.4),
                        ),
                        child: Icon(
                          Icons.people,
                          color: Colors.white,
                          size: 25,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 14),
              _buildDivider(),
              SizedBox(height: 10),
              _buildProgressText(),
              SizedBox(height: 12),
              _buildProgressBar(),
              SizedBox(height: 12),
              _buildProgressTrack(),
            ],
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

  Widget _buildProgressText() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "PROGRESS IN RECRUITMENT",
          style: TextStyle(
            color: Colors.grey[400],
            fontWeight: FontWeight.bold,
          ),
        ),
        Spacer(),
        Text(
          "20%",
          style: TextStyle(
            color: Colors.grey[400],
            fontWeight: FontWeight.bold,
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
          height: 10,
          child: LinearProgressIndicator(
            borderRadius: BorderRadius.circular(13),
            value: 0.2,
            backgroundColor: Colors.grey.withOpacity(0.2),
            valueColor: AlwaysStoppedAnimation(Colors.white.withOpacity(0.5)),
          ),
        ),
      ],
    );
  }

  Widget _buildProgressTrack() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "2/10 RECRUITS NEEDED",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.grey[400],
          ),
        ),
      ],
    );
  }

  Widget _buildRecruitmentCode() {
    return Container(
      height: 155,
      width: double.infinity,
      padding: EdgeInsets.all(19.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 4),
            spreadRadius: 0,
            blurRadius: 10,
            color: Colors.black12,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                "Your Recruitment Code",
                style: TextStyle(
                  color: Color(0xFF1E2D59),
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 15),
            ],
          ),
          SizedBox(height: 16),
          Container(
            height: 75,
            width: double.infinity,
            padding: EdgeInsets.all(18.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Color.fromARGB(255, 231, 240, 251),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "FMNL088",
                  style: TextStyle(
                    color: Color(0xFF1E2D59),
                    fontSize: 21,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                Container(
                  height: 40,
                  width: 80,
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(11),
                    color: Color(0xFF1E2D59),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.copy, size: 18, color: Colors.white),
                      Spacer(),
                      Text(
                        "Copy",
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTopPerformers() {
    return Container(
      height: 210,
      width: double.infinity,
      padding: EdgeInsets.all(19.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 4),
            spreadRadius: 0,
            blurRadius: 10,
            color: Colors.black12,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                "Top performers",
                style: TextStyle(
                  color: Color(0xFF1E2D59),
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spacer(),
              Container(
                height: 30,
                width: 95,
                padding: EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color.fromARGB(255, 231, 240, 251),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 4),
                      spreadRadius: 0,
                      blurRadius: 10,
                      color: Colors.black12,
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Show More",
                      style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    Icon(Icons.keyboard_arrow_right, size: 21),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    height: 38,
                    width: 38,
                    padding: EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: LinearGradient(
                        colors: [Color(0xFFD2D4AC), Color(0xFFDFC6C1)],
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("1", style: TextStyle(color: Colors.white)),
                      ],
                    ),
                  ),
                  SizedBox(width: 20),
                  FaIcon(FontAwesomeIcons.solidCircleUser, size: 42),
                  SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Tester FD02",
                        style: TextStyle(
                          color: Color(0xFF1E2D59),
                          fontWeight: FontWeight.w800,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        "₱11,904.00 sales",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.grey[500],
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  FaIcon(
                    FontAwesomeIcons.trophy,
                    color: Color(0xFFD2D4AC),
                    size: 19,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
