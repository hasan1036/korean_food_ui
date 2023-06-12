import 'package:flutter/material.dart';
import 'package:korean_food/Screen/NavbarScreen/coupon_screen.dart';
import 'package:korean_food/Screen/NavbarScreen/home_screen.dart';
import 'package:korean_food/Screen/NavbarScreen/line_screen.dart';
import 'package:korean_food/Screen/NavbarScreen/more_screen.dart';
import 'package:korean_food/Screen/NavbarScreen/store_screen.dart';

class BottmNavBarScreen extends StatefulWidget {
  const BottmNavBarScreen({Key? key}) : super(key: key);

  @override
  State<BottmNavBarScreen> createState() => _BottmNavBarScreenState();
}

class _BottmNavBarScreenState extends State<BottmNavBarScreen> {

 final List<Widget> _screens =const [
    HomeScreen(),
    CouponScreen(),
    LineScreen(),
    StoreScreen(),
    MoreScreen(),
  ];

 int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color(0xff2C6BD),

      body: _screens[_selectedIndex],

      bottomNavigationBar: BottomNavigationBar(

        onTap: (value){
          _selectedIndex = value;
          if(mounted){
            setState(() {

            });
          }

        },
          elevation: 4,
          selectedItemColor: Colors.grey.shade900,
          unselectedItemColor: Colors.grey.shade400,
          currentIndex:_selectedIndex,
          showUnselectedLabels: true,
          unselectedLabelStyle: TextStyle(
            color: Colors.grey.shade400
          ),
          items:const [
            BottomNavigationBarItem(icon: Icon(
              Icons.home_outlined
            ),
            label: '행스홈'
            ),

            BottomNavigationBarItem(icon: Icon(
              Icons.local_offer_outlined
            ),
                label: '행스쿠폰'
            ),

            BottomNavigationBarItem(icon: Icon(
              Icons.star
            ),
                label: '행스찍기'
            ),

            BottomNavigationBarItem(icon: Icon(
              Icons.store
            ),
                label: '행스매장'
            ),

            BottomNavigationBarItem(icon: Icon(
              Icons.more_horiz
            ),
                label: '더보기'
            ),







          ]
      ),
    );
  }
}
