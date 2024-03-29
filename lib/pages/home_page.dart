import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:walletapp/util/my_button.dart';
import 'package:walletapp/util/my_card.dart';
import 'package:walletapp/util/my_list_title.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.pink,
        child: Icon(Icons.monetization_on, size: 32),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey[200],
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(onPressed: () {}, icon: Icon(Icons.home, size: 32)),
              IconButton(onPressed: () {}, icon: Icon(Icons.settings, size: 32))
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),

              //APP BAR
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        'My',
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        ' Cards',
                        style: TextStyle(fontSize: 28),
                      )
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.grey[400],
                      shape: BoxShape.circle,
                    ),
                    child: Icon(Icons.add),
                  )
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 200,
              child: PageView(
                controller: _controller,
                scrollDirection: Axis.horizontal,
                children: [
                  MyCard(
                    expiryMonth: 3,
                    cardNumber: 5678,
                    balance: 700.4,
                    color: Colors.red[300],
                    expiryYear: 26,
                  ),
                  MyCard(
                    expiryMonth: 2,
                    cardNumber: 1234,
                    balance: 400,
                    color: Colors.deepPurple[300],
                    expiryYear: 24,
                  ),
                  MyCard(
                    expiryMonth: 1,
                    cardNumber: 9012,
                    balance: 200,
                    color: Colors.green[300],
                    expiryYear: 28,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: ExpandingDotsEffect(activeDotColor: Colors.grey.shade700),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MyButton(
                    icon: 'send-money.png',
                    text: 'Send',
                  ),
                  MyButton(
                    icon: 'credit-card.png',
                    text: 'Send',
                  ),
                  MyButton(
                    icon: 'bill.png',
                    text: 'Send',
                  ),
                ],
              ),
            ),
            MyListTitle(
              titleIcon: 'analysis',
              titleName: 'Payment and Income',
              titleSubName: 'Transaction history',
            ),
            MyListTitle(
              titleIcon: 'transaction',
              titleName: 'Transaction',
              titleSubName: 'Transaction history',
            ),
          ],
        ),
      ),
    );
  }
}
