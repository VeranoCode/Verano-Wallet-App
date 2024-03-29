import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String icon;
  final String text;

  const MyButton({Key? key, required this.icon, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Container(
              height: 80,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                //color: Colors.grey[100],
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.white,
                    blurRadius: 30,
                    spreadRadius: 10,
                  ),
                ],
              ),
              child: Center(
                child: Image.asset('icons/' + icon),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              text,
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[700]),
            )
          ],
        )
      ],
    );
  }
}
