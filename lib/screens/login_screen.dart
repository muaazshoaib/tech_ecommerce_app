import 'package:flutter/material.dart';
import 'package:tech_ecommerce_app/colors.dart';
import 'package:tech_ecommerce_app/components/login_screen_background_design.dart';
import 'package:tech_ecommerce_app/components/title_heading_in_app_screen.dart';
import 'package:tech_ecommerce_app/screens/supporting_screens/supporting_screen_for_bottom_navigation_bar.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBlueColor,
      body: SafeArea(
        child: Stack(
          children: [
            const LoginScreenBackgroundDesign(),
            Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(
                    top: 60,
                    left: 20,
                    right: 20,
                    bottom: 30,
                  ),
                  child: TitleHeadingInAppScreen(
                    titleText: 'Welcome back',
                    titleColor: Colors.white,
                  ),
                ),
                Expanded(
                  child: Container(
                    height: double.infinity,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: ListView(
                        children: [
                          const Text(
                            'Login',
                            style: TextStyle(
                              fontFamily: 'Raleway Bold',
                              fontSize: 18,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.email,
                                        color: kGreyColor,
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        'Email',
                                        style: TextStyle(
                                            color: kGreyColor,
                                            fontSize: 15,
                                            fontFamily: 'Raleway SemiBold'),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  const TextField(
                                    keyboardType: TextInputType.emailAddress,
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.lock,
                                        color: kGreyColor,
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        'Password',
                                        style: TextStyle(
                                            color: kGreyColor,
                                            fontSize: 15,
                                            fontFamily: 'Raleway SemiBold'),
                                      ),
                                    ],
                                  ),
                                  const TextField(
                                    obscureText: true,
                                    keyboardType: TextInputType.visiblePassword,
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              TextButton(
                                onPressed: () {},
                                child: const Text(
                                  'Forgot password?',
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              TextButton(
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          const Color(0xFF5956E9)),
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                    const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(
                                          10,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const SupportingScreenForBottomNavigationBar(),
                                    ),
                                  );
                                },
                                child: const SizedBox(
                                  height: 40,
                                  width: double.infinity,
                                  child: Center(
                                    child: Text(
                                      'Login',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 20.0,
                                        color: Colors.white,
                                        fontFamily: 'Raleway Bold',
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Center(
                                child: TextButton(
                                  onPressed: () {},
                                  child: const Text('Create Account'),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
