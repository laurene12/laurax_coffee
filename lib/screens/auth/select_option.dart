import 'package:flutter/material.dart';
import 'package:laurax_coffee/screens/utils/colors.dart';

import '../utils/functions.dart';
import 'login.dart';

class SelectedOption extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('')),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Select an option',
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 20,
                color: kTextColor,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ButtonStyle(
                  elevation: MaterialStateProperty.all(3.0),
                  backgroundColor: MaterialStateProperty.all(kSecondaryColor),
                  padding: MaterialStateProperty.all(
                    const EdgeInsets.all(9.0),
                  ),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                onPressed: () {
                  navigateToNextScreen(context, Login());
                },
                child: const Text(
                  'Login',
                  style: TextStyle(
                    color: kWhiteColor,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: (const Text(
                "or",
                style: TextStyle(
                  fontSize: 14,
                  decoration: TextDecoration.underline,
                ),
              )),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ButtonStyle(
                  elevation: MaterialStateProperty.all(3.0),
                  backgroundColor: MaterialStateProperty.all(kSecondaryColor),
                  padding: MaterialStateProperty.all(
                    const EdgeInsets.all(9.0),
                  ),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                onPressed: null,
                child: const Text(
                  'Create an Account',
                  style: TextStyle(
                    color: kWhiteColor,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
