import 'package:flutter/material.dart';

void navigateToNextScreen(BuildContext context, Widget nextScreen) {
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => nextScreen));
}
