
import 'package:flutter/material.dart';

class VerificationPage extends StatefulWidget {
  @override
  State<VerificationPage> createState() => _VerificationPageState();
}

class _VerificationPageState extends State<VerificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/images/undraw_personalization_tri_1.png', // Replace with your image path
              height: 150,
            ),
           const  SizedBox(height: 20),
            const Text(
              'Enter Verification Code',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
           const  SizedBox(height: 10),
           const  Text(
              'We have sent an SMS to:',
              style: TextStyle(
                fontSize: 14,
              ),
            ),
           const  SizedBox(height: 5),
            const Row(
              children: [
                Text(
                  'XXXXXXXX', // Replace with your number
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: List.generate(
                5,
                (index) => Container(
                  width: 50,
                  height: 50,
                  margin: const EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                    border: Border.all(),
                  ),
                  // You can add TextField or other widgets for each verification box
                ),
              ),
            ),
           const  SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    // Functionality to resend OTP
                  },
                  child: const  Text(
                    'Send OTP',
                    style: TextStyle(
                      color: Colors.red,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // Functionality to change phone number
                  },
                  child:const  Text(
                    'Change Phone Number',
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                ),
              ],
            ),
           const SizedBox(height: 20),
            Padding(
              padding:const  EdgeInsets.symmetric(horizontal: 8.0),
              child: MaterialButton(
                onPressed: () {
                  // Functionality to navigate to next page
                },
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('Next'),
                    Icon(Icons.arrow_forward),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}