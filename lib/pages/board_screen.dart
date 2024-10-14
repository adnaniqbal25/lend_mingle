import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class BoardingScreen extends StatelessWidget {
  const BoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            Spacer(),
            Text(
              'Welcome to LendMingle',
              style: TextStyle(),
            ),
            Lottie.asset('assets/lottie/lottie_2.json'),
            Text(
                'Discover the smarter way to lend and borrow money. Whether you’re looking to invest or need a loan.'),
            Spacer(),
          ],
        ),
      ),
    ));
  }
}
