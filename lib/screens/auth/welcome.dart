import 'package:flutter/material.dart';
import 'package:laurax_coffee/screens/auth/select_option.dart';
import 'package:laurax_coffee/screens/utils/colors.dart';
import 'package:unicons/unicons.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
          width: double.infinity,
          child: Stack(children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              color: Colors.black87,
              child: Image.asset(
                'assets/bgWelcome.png',
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
              ),
            ),
            Container(
              width: double.infinity,
              height: double.infinity,
              color: Colors.black87.withOpacity(.4),
            ),
            SizedBox(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 320,
                    height: 300,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/logos.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Column(
                    children: <Widget>[
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "Laurax's coffee makes you happy ",
                              style: Theme.of(context)
                                  .textTheme
                                  .displaySmall
                                  ?.merge(const TextStyle(
                                      color: kWhiteColor, fontSize: 21)),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ]),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            _navigateToNextScreen(context);
          },
          tooltip: 'Increment',
          backgroundColor: kFirstWhiteColor,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(50.0))),
          child: const Icon(
            UniconsLine.arrow_right,
            size: 40,
            color: kTextColor,
          ),
        ));
  }

  void _navigateToNextScreen(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => SelectedOption()));
  }
}
