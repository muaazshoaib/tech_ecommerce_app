import 'package:flutter/material.dart';
import 'package:tech_ecommerce_app/colors.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: Stack(
          children: [
            Stack(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image:
                          AssetImage("assets/images/splash-screen-saly-19.png"),
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 450,
                  ),
                  child: Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                            "assets/images/splash-screen-rectangle-4.png"),
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Text(
                      'Find your Gadget',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 65.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                TextButton(
                  style: ButtonStyle(
                    // foregroundColor:
                    // MaterialStateProperty.all<Color>(Colors.white),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            10,
                          ),
                        ),
                        // side: BorderSide(color: Colors.red),
                      ),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Get Started',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Color(0xFF5956E9),
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  //   child: Padding(
                  //     padding: const EdgeInsets.all(20.0),
                  //     child: Container(
                  //       color: Colors.white,
                  //       padding: const EdgeInsets.fromLTRB(60, 10, 60, 10),
                  //       child: const Text(
                  //         'Get Started',
                  //         textAlign: TextAlign.center,
                  //         style: TextStyle(
                  //           fontSize: 20.0,
                  //           color: Color(0xFF5956E9),
                  //           fontWeight: FontWeight.bold,
                  //         ),
                  //       ),
                  //     ),
                  //   ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}







// body: SafeArea(
//         child: Column(
//           // crossAxisAlignment: CrossAxisAlignment.center,
// //           // mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             const 
// //             Expanded(
//               child: Stack(
//                 children: const [
//                   Image(
//                     image: AssetImage(
//                       'assets/images/splash-screen-saly-19.png',
//                     ),
//                   ),
//                   Image(
//                     image: AssetImage(
//                       'assets/images/splash-screen-rectangle-4.png',
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             
//           ],
//         ),
//       ),


