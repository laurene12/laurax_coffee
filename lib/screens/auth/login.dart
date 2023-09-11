import 'package:flutter/material.dart';
import 'package:laurax_coffee/screens/utils/colors.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('')),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(40),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              'Sign in',
              textAlign: TextAlign.left,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 20,
                color: kTextColor,
                fontWeight: FontWeight.w500,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: Text(
                "Welcome back",
                style: TextStyle(
                    fontSize: 14,
                    color: kPlaceholderColor,
                    fontWeight: FontWeight.w500),
              ),
            )
          ],
        ),
      ),
    );
  }
}
