import 'package:flutter/material.dart';
import 'package:tech_ecommerce_app/colors.dart';
import 'package:tech_ecommerce_app/screens/checkout_screen.dart';
import 'package:tech_ecommerce_app/screens/favorites_screen.dart';
import 'package:tech_ecommerce_app/screens/home_screen.dart';
import 'package:tech_ecommerce_app/screens/profile_screen.dart';

class SupportingScreenForBottomNavigationBar extends StatefulWidget {
  const SupportingScreenForBottomNavigationBar({Key? key}) : super(key: key);

  @override
  State<SupportingScreenForBottomNavigationBar> createState() =>
      _SupportingScreenForBottomNavigationBarState();
}

class _SupportingScreenForBottomNavigationBarState
    extends State<SupportingScreenForBottomNavigationBar> {
  int _selectedIndexInBottomNavigationBar = 0;

  static const List _screensList = [
    HomeScreen(),
    FavoritesScreen(),
    ProfileScreen(),
    CheckoutScreen(),
  ];

  void _onItemTappedInBottomNavigationBarItemList(int index) {
    setState(() {
      _selectedIndexInBottomNavigationBar = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _screensList.elementAt(_selectedIndexInBottomNavigationBar),
        bottomNavigationBar: BottomNavigationBar(
          elevation: 0.0,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          backgroundColor: kGreyColor,
          selectedItemColor: kBlueColor,
          unselectedItemColor: Colors.black,
          type: BottomNavigationBarType.shifting,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: kGreyColor,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
                color: kGreyColor,
              ),
              label: 'Favorite',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.account_circle,
                color: kGreyColor,
              ),
              label: 'Profile',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart,
                color: kGreyColor,
              ),
              label: 'Checkout',
            ),
          ],
          currentIndex: _selectedIndexInBottomNavigationBar,
          onTap: _onItemTappedInBottomNavigationBarItemList,
        ),
      ),
    );
  }
}
