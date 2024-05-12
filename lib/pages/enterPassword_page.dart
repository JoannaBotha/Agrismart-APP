import 'package:flutter/material.dart';

class EnterPasswordPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const  Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/log.png', // Replace with your image path
              height: 300,
            ),
           const  SizedBox(height: 20),
           const  Text(
              'Enter Password',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
           const  SizedBox(height: 10),
            const Text(
              'It looks like you already have an account with this number. Please enter the password to proceed.',
            ),
           const  SizedBox(height: 20),
           const  TextField(
              decoration: InputDecoration(
                hintText: 'Password',
                suffixIcon: Icon(Icons.visibility),
                prefixIcon: Icon(Icons.lock),
              ),
            ),
           const  SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                // Functionality to handle forgot password
              },
              child:const  Text(
                'Forgot Password',
                style: TextStyle(
                  color: Colors.red,
                ),
              ),
            ),
          const   SizedBox(height: 20),
            MaterialButton(
              onPressed: () {
                // Functionality to handle form submission
              },
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('Submit'),
                  Icon(Icons.arrow_forward),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
