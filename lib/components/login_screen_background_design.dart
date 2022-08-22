import 'package:flutter/material.dart';

class LoginScreenBackgroundDesign extends StatelessWidget {
  const LoginScreenBackgroundDesign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Image(
                    image:
                        AssetImage('assets/images/login-screen-ellipse-21.png'),
                  ),
                  SizedBox(
                    width: 135,
                  ),
                  Image(
                    image:
                        AssetImage("assets/images/login-screen-ellipse-19.png"),
                  ),
                ],
              ),
              const SizedBox(
                height: 115,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Padding(
                    padding: EdgeInsets.only(right: 40),
                    child: Image(
                      image: AssetImage(
                          'assets/images/login-screen-ellipse-20.png'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                Image(
                  image:
                      AssetImage('assets/images/login-screen-rectangle-4.png'),
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}
