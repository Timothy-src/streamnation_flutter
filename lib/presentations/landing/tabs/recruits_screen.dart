import 'package:flutter/material.dart';

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
        child: SingleChildScrollView(padding: EdgeInsets.all(24.0)),
      ),
    );
  }
}
