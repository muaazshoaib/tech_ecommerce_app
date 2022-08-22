import 'package:flutter/material.dart';
import 'package:tech_ecommerce_app/colors.dart';
import 'package:tech_ecommerce_app/components/splash_screen_background_design.dart';
import 'package:tech_ecommerce_app/components/title_heading_in_app_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: Stack(
          children: [
            const SplashScreenBackgroundDesign(),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const TitleHeadingInAppScreen(titleText: 'Find your Gadget', titleColor: Colors.white,),
                  Flexible(
                    child: TextButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(
                                10,
                              ),
                            ),
                          ),
                        ),
                      ),
                      onPressed: () {},
                      child: const SizedBox(
                        height: 40,
                        width: double.infinity,
                        child: Center(
                          child: Text(
                            'Get Started',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Color(0xFF5956E9),
                              fontFamily: 'Raleway Bold',
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
