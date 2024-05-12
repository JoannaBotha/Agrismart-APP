
import 'package:flutter/material.dart';

class NewRegistrationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 102, 202, 106),
        
        title: const  Text("New Registration"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           const  Text(
              "Choose Your Password",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
           const  SizedBox(height: 20.0),
           const  Text(
              "For security & safety, please choose a password",
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
           const  SizedBox(height: 20.0),
            Center(
              child: Image.asset(
                'assets/images/password_symbol.png',
                height: 100.0,
                width: 100.0,
              ),
            ),
           const  SizedBox(height: 20.0),
         const    TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: "Password",
                suffixIcon: Icon(Icons.visibility),
              ),
            ),
            const SizedBox(height: 10.0),
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: "Confirm Password",
                suffixIcon: Icon(Icons.visibility),
              ),
            ),
          const   SizedBox(height: 20.0),
            MaterialButton(
              onPressed: () {
                // Action to finish registration
              },
              color: Color.fromARGB(255, 67, 229, 100),
              textColor: Colors.white,
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("Finish, Ready to Go"),
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
