import 'package:flutter/material.dart';
import 'package:logging/logging.dart';

final Logger log = Logger('MyApp');

void main() {
  runApp(LoginApp());
}

class LoginApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Login',
      home: LoginScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class LoginScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset(
                  'assets/streamnation-icon.png',
                  height: 180, // you can reduce this height
                  width: 140,
                ),
                SizedBox(height: 16), // reduce space between logo and title
                Text(
                  "Stream Nation",
                  style: TextStyle(
                    fontSize: 38,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF1E2D59),
                  ),
                ),
                Text(
                  "Sign in your account",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(height: 24),

                /// Container with box shadow wrapping fields and button
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 24,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 10,
                        offset: Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Email Address',
                        style: TextStyle(
                          color: Color(0xFF1E2D59),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 6),
                      ConstrainedBox(
                        constraints: BoxConstraints(maxWidth: 320),
                        child: TextField(
                          controller: emailController,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            hintText: 'johndoe@gmail.com',
                            filled: true,
                            fillColor: Colors.grey[50],
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 14,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Password',
                            style: TextStyle(
                              color: Color(0xFF1E2D59),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              log.info('Forgot password tapped');
                            },
                            child: Text(
                              'Forgot password?',
                              style: TextStyle(
                                color: Color(0xFF1E2D59),
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 6),
                      ConstrainedBox(
                        constraints: BoxConstraints(maxWidth: 320),
                        child: TextField(
                          controller: passwordController,
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: 'Password',
                            filled: true,
                            fillColor: Colors.grey[50],
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 14,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 24),

                      /// Login Button
                      Center(
                        child: ConstrainedBox(
                          constraints: BoxConstraints(maxWidth: 320),
                          child: SizedBox(
                            width: 280,
                            height: 70,
                            child: ElevatedButton(
                              onPressed: () {
                                log.info('Login tapped');
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xFF1E2D59),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(14),
                                ),
                              ),
                              child: Text(
                                'Login',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),

                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'No account yet? ',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 14,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                log.info('Create One tapped');
                              },
                              child: Text(
                                'Create One',
                                style: TextStyle(
                                  color: Color(0xFF1E2D59),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                ),
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
          ),
        ),
      ),
    );
  }
}
