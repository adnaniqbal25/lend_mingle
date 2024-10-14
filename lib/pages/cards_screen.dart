import 'package:flutter/material.dart';
import 'package:lend_mingle/utils/my_cards.dart';

class CardsScreen extends StatefulWidget {
  const CardsScreen({super.key});

  @override
  State<CardsScreen> createState() => _CardsScreenState();
}

class _CardsScreenState extends State<CardsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        'My',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        ' Cards',
                        style: TextStyle(
                          fontSize: 24,
                        ),
                      )
                    ],
                  ),
                  Icon(Icons.add)
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  MyCards(
                    balance: 457.890,
                    cardColor: Colors.blue[300],
                    expiryMonth: 05,
                    expiryYear: 27,
                  ),
                  MyCards(
                    balance: 544.678,
                    cardColor: Colors.green[300],
                    expiryMonth: 12,
                    expiryYear: 25,
                  ),
                  MyCards(
                    balance: 844.543,
                    cardColor: Colors.amber[300],
                    expiryMonth: 02,
                    expiryYear: 25,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
