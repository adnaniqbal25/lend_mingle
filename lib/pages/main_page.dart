import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lend_mingle/pages/cards_screen.dart';
import 'package:lend_mingle/pages/home_page.dart';
import 'package:lend_mingle/pages/profile_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ClipRRect(
          borderRadius: BorderRadius.all(
            Radius.circular(25),
          ),
          child: BottomNavigationBar(
            backgroundColor: Colors.white,
            items: [
              BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/svg/home_2.svg'),
                label: 'home',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/svg/card.svg'),
                label: 'cards',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/svg/search.svg'),
                label: 'chat',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/svg/profile.svg'),
                label: 'profile',
              ),
            ],
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: true,
            showUnselectedLabels: false,
            currentIndex: currentIndex,
            onTap: (index) {
              setState(
                () {
                  currentIndex = index;
                  print(index);
                },
              );
            },
          ),
        ),
      ),
      body: page[currentIndex],
    );
  }

  final page = [
    // HomePage(),
    HomePage(),
    CardsScreen(),
    Center(
      child: Text(
        'This is search page',
        style: TextStyle(color: Colors.black),
      ),
    ),
    ProfilePage()
    // ProfilePage()
  ];
}
