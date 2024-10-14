import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lend_mingle/utils/avatar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Hello, Adnan',
                    style: GoogleFonts.leagueSpartan(
                        fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  Image.asset(
                    'assets/images/facebook.png',
                    width: 28,
                  )
                ],
              ),
              SizedBox(height: 20),
              Text(
                'Get Loans in Minutes!',
                style: GoogleFonts.leagueSpartan(fontSize: 24),
              ),
              Text(
                'Currently you have 2 Loans',
                style: GoogleFonts.leagueSpartan(
                    fontSize: 16, color: Colors.black38),
              ),
              SizedBox(height: 10),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.money),
                        SizedBox(width: 10),
                        Text('All Loan Amounts'),
                      ],
                    ),
                    Text('\$74,526,30')
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Color(0xffB0D660),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.money),
                        SizedBox(width: 10),
                        Text('Monthly Payment'),
                      ],
                    ),
                    Text('\$12345.30')
                  ],
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Transfer'),
                  TextButton(
                    onPressed: () {},
                    child: Text('See all'),
                  )
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 65,
                    height: 65,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(35.0)),
                    child: Icon(Icons.add),
                  ),
                  Avatar(
                    url:
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSMvnsgndayB42vKr_IFgWH6ncLC3IAou8ZPw&s',
                    text: 'Sofia',
                  ),
                  Avatar(
                    url:
                        'https://t4.ftcdn.net/jpg/03/64/21/11/360_F_364211147_1qgLVxv1Tcq0Ohz3FawUfrtONzz8nq3e.jpg',
                    text: 'Eshan',
                  ),
                  Avatar(
                    url:
                        'https://images.assetsdelivery.com/compings_v2/fizkes/fizkes2011/fizkes201102042.jpg',
                    text: 'Sarah',
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
